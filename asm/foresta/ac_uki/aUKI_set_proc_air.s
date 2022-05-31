lbl_804AF0C4:
/* 804AF0C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AF0C8  7C 08 02 A6 */	mflr r0
/* 804AF0CC  38 E0 00 00 */	li r7, 0
/* 804AF0D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AF0D4  38 00 00 0E */	li r0, 0xe
/* 804AF0D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AF0DC  7C 7F 1B 78 */	mr r31, r3
/* 804AF0E0  38 9F 00 28 */	addi r4, r31, 0x28
/* 804AF0E4  B0 03 02 62 */	sth r0, 0x262(r3)
/* 804AF0E8  38 BF 02 68 */	addi r5, r31, 0x268
/* 804AF0EC  A8 C3 02 62 */	lha r6, 0x262(r3)
/* 804AF0F0  4B FF EA 71 */	bl aUKI_parabola_init
/* 804AF0F4  38 00 00 01 */	li r0, 1
/* 804AF0F8  90 1F 02 38 */	stw r0, 0x238(r31)
/* 804AF0FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AF100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AF104  7C 08 03 A6 */	mtlr r0
/* 804AF108  38 21 00 10 */	addi r1, r1, 0x10
/* 804AF10C  4E 80 00 20 */	blr 
