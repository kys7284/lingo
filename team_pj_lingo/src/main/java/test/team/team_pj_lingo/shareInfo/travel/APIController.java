package test.team.team_pj_lingo.shareInfo.travel;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;

import org.springframework.http.HttpStatus;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
public class APIController {

    private static final String API_URL = "https://apis.data.go.kr/B551011/KorService1/areaBasedList1";
    private static final String SERVICE_KEY = "VAce4HjVlGxVcvwHaFj1KzXjykHXKkpooXvcdrvk0eGlZJJ9Q6uxIwSBA9CCq0rlyq%2BKthYZB%2BpD2b9JKKTSdQ%3D%3D";

    @GetMapping("/APIController.do")
    public ResponseEntity<String> getTourismData(
            @RequestParam(defaultValue = "10") int numOfRows,
            @RequestParam(defaultValue = "1") int pageNo,
            @RequestParam(defaultValue = "1") int areaCode) {
        try {

            String urlString = String.format(
                "%s?numOfRows=%d&pageNo=%d&MobileOS=ETC&MobileApp=TEST&_type=json&arrange=Q&areaCode=%d&serviceKey=%s",
                API_URL, numOfRows, pageNo, areaCode , SERVICE_KEY
            );

            URL url = new URL(urlString);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Content-Type", "application/json; charset=UTF-8");

            // 응답 코드 확인
            int responseCode = conn.getResponseCode();
            System.out.println("응답 코드: " + responseCode);
            System.out.println("URL" + url);

            // UTF-8 인코딩 강제 적용
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) {
                sb.append(line);
            }
            br.close();
            conn.disconnect();

            String response = sb.toString();
            System.out.println("API 응답 데이터: " + response);  // 한글 정상 출력 확인

            // HTTP 헤더에 UTF-8 설정
            HttpHeaders headers = new HttpHeaders();
            headers.add("Content-Type", "application/json; charset=UTF-8");

            return new ResponseEntity<>(response, headers, HttpStatus.OK);
            
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>("{\"error\":\"API 요청 실패\"}", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}