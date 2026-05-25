
# Snippet Library
---

## Schema Snippets

Use these to define schema entries with optional dependency logic.

| Name                  | Prefix | Description                          |
|-----------------------|--------|--------------------------------------|
| Schema Add            | `sca`  | Adds a basic schema definition       |
| Schema Add Dependent  | `scad` | Adds a schema definition with dependencies |

### Schema Add (`sca`)
```ts
schema.add({
  key: $1,
  defaultAddLibraryItemValue: $2,
});
```

### Schema Add Dependent (`scad`)
```ts
schema.add({
  key: $1,
  defaultAddLibraryItemValue: $2,
  defaultToApiValue: $3,
  dependentFields: [$4],
});
```

---

## Form Layout Components

These snippets help structure form fields using layout containers.

| Name                         | Prefix | Description                             |
|------------------------------|--------|-----------------------------------------|
| Field Row                    | `fcr`  | Field Row Component                     |
| Field Row with Description   | `fcrd` | Field Row Component with description    |
| Dependent Field Container    | `fcd`  | Dependent Field Container               |
| Nested Field Container       | `fcn`  | Nested Field Container                  |

### Field Row (`fcr`)
```tsx
<FormComponents.FieldRow>
  $1
</FormComponents.FieldRow>
```

### Field Row with Description (`fcrd`)
```tsx
<FormComponents.FieldRow description={$1}>
  $2
</FormComponents.FieldRow>
```

### Dependent Field Container (`fcd`)
```tsx
<FormComponents.DependentFieldContainer fieldName={$1} dependentValue={$2} dependentFields={[$3]}>
  $4
</FormComponents.DependentFieldContainer>
```

### Nested Field Container (`fcn`)
```tsx
<FormComponents.NestedFieldContainer>
  $1
</FormComponents.NestedFieldContainer>
```

---

## Field Components

These snippets insert individual form fields with consistent props.

| Component              | Prefix | Description                          |
|------------------------|--------|--------------------------------------|
| Checkbox               | `fdc`  | Boolean input with label             |
| Text                   | `fdt`  | Single-line text input               |
| Unit                   | `fdu`  | Text input with unit suffix          |
| Select                 | `fds`  | Dropdown with options                |
| MultiSelect            | `fdm`  | Multi-select dropdown                |
| TextArea               | `fdta` | Multi-line text input                |
| NullableBoolean        | `fdnb` | Boolean input with nullable state    |

### Fields.Checkbox (`fdc`)
```tsx
<Fields.Checkbox name={$1} label={$2} />
```

### Fields.Text (`fdt`)
```tsx
<Fields.Text name={$1} label={$2} />
```

### Fields.Unit (`fdu`)
```tsx
<Fields.Unit name={$1} label={$2} />
```

### Fields.Select (`fds`)
```tsx
<Fields.Select name={$1} label={$2} options={[$3]} />
```

### Fields.MultiSelect (`fdm`)
```tsx
<Fields.MultiSelect name={$1} label={$2} options={[$3]} />
```

### Fields.TextArea (`fdta`)
```tsx
<Fields.TextArea name={$1} label={$2} />
```

### Fields.NullableBoolean (`fdnb`)
```tsx
<Fields.NullableBoolean name={$1} label={$2} />
```

---
