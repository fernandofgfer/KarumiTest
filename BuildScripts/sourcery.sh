set -e

./Pods/Sourcery/bin/sourcery --sources KarumiTest  --templates Pods/Sourcery/Templates/AutoMockable.stencil --templates Pods/Sourcery/Templates/AutoEquatable.stencil --output KarumiTestTests/Generated

sed -i '' '1s/^/@testable import KarumiTest\
/g' KarumiTestTests/Generated/AutoMockable.generated.swift

sed -i '' '1s/^/@testable import KarumiTest\
/g' KarumiTestTests/Generated/AutoEquatable.generated.swift
