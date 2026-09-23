import datetime

try:
    from zoneinfo import ZoneInfo
except ImportError:  # pragma: no cover - Python < 3.9 fallback
    ZoneInfo = None


def load_timezone(name: str) -> datetime.tzinfo:
    if ZoneInfo is not None:
        try:
            return ZoneInfo(name)
        except Exception:
            pass

    try:
        import pytz  # type: ignore

        return pytz.timezone(name)
    except Exception:
        return datetime.timezone.utc
