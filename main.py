from __future__ import annotations

from gui import App
from manager import ProtectionManager


def main() -> None:
    """Launch the VIGIL application."""
    manager = ProtectionManager()
    app = App(manager)
    app.mainloop()


if __name__ == "__main__":
    main()
