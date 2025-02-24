package codesquad.issueTracker.dto.response;

import codesquad.issueTracker.domain.Label;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;

@Getter
public class LabelResponse {
    private final Long id;

    private final String name;

    @JsonProperty("color_code")
    private final String colorCode;
    private final String content;

    public LabelResponse(Label label) {
        id = label.getId();
        name = label.getName();
        colorCode = label.getColorCode();
        content = label.getContent();
    }
}
