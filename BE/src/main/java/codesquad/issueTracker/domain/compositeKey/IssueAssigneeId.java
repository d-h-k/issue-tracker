package codesquad.issueTracker.domain.compositeKey;


import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
public class IssueAssigneeId implements Serializable {
    private Long issue;
    private Long user;
}
