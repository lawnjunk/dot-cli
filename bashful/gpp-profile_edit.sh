#include "gpp-profile_verify.sh"
#include "gpp-profile_hook.sh"
#include "gpp-editor.sh"
#ifndef PROFILE_EDIT
#define PROFILE_EDIT
profile_edit() #{{{1
{
    # <doc:profile_edit> {{{
    #
    # Edits an existing profile.
    #
    # </doc:profile_edit> }}}

    profile_verify || return 1
    profile_hook edit pre
    editor "$PROFILE_FILE"
    profile_hook edit post
}
#endif
