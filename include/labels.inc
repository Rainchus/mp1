.macro glabel label
    .global \label
    .type \label, @function
    \label:
.endm

.macro dlabel label
    .global \label
	.type   \label, @object
    \label:
.endm

.macro jlabel label
    .global \label
    .type \label, @function
    \label:
.endm

