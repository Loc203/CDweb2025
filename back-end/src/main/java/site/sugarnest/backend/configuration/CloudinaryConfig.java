package site.sugarnest.backend.configuration;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CloudinaryConfig {

    @Bean
    public Cloudinary cloudinary() {
        return new Cloudinary(ObjectUtils.asMap(
                "cloud_name", "dtkkqozjn",
                "api_key", "361566139622555",
                "api_secret", "olNocLsl-C-Ndp4cr1s5BFqSMfs"));
    }
}