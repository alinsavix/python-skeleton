from typing import TYPE_CHECKING, List

dist_name = __name__
if TYPE_CHECKING:
    __version__ = 'unknown'
else:
    try:
        from ._version import version as __version__
    except ImportError:
        __version__ = 'unknown'

__all__: List[str] = []
