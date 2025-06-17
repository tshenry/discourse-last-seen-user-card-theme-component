import Component from "@ember/component";
import formatDate from "discourse/helpers/format-date";
import { i18n } from "discourse-i18n";
import { classNames, tagName } from "@ember-decorators/component";

@tagName("div")
@classNames("user-card-metadata-outlet", "last-seen-metadata")
export default class LastSeen extends Component {
  <template>
    {{#if this.user.last_seen_at}}
      <span class="desc">{{i18n "user.last_seen"}}</span>
      {{formatDate this.user.last_seen_at leaveAgo="true"}}
    {{/if}}
  </template>
}
