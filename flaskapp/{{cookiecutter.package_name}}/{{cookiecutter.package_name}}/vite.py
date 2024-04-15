from typing import Any, Dict

from flask import current_app


def vite_asset(path: str) -> str:
    return "{assets_root}{path}".format(
        assets_root=current_app.config["ASSETS_ROOT"], path=path
    )


def vite_icon(path: str) -> str:
    return f'<link rel="icon" type="image/svg+xml" href="{vite_asset(path)}" />'


def vite_script(path: str) -> str:
    return f'<script type="module" src="{vite_asset(path)}"></script>'


def vite_client() -> str:
    return '<script type="module" src="{assets_root}@vite/client"></script>'.format(
        assets_root=current_app.config["ASSETS_ROOT"]
    )


def vite_preamble() -> str:
    if not current_app.config["DEBUG"]:
        return ""
    return """<script type="module">
import RefreshRuntime from "{assets_root}@react-refresh"
RefreshRuntime.injectIntoGlobalHook(window)
window.$RefreshReg$ = () => {{}}
window.$RefreshSig$ = () => (type) => type
window.__vite_plugin_react_preamble_installed__ = true
</script>""".format(
        assets_root=current_app.config["ASSETS_ROOT"]
    )


def vite_template_kwargs() -> Dict[str, Any]:
    return dict(
        vite_client=vite_client(),
        vite_icon=vite_icon,
        vite_script=vite_script,
        vite_preamble=vite_preamble(),
    )
