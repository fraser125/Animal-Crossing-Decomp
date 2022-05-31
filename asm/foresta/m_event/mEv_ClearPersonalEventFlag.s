lbl_8039AA5C:
/* 8039AA5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039AA60  7C 08 02 A6 */	mflr r0
/* 8039AA64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039AA68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039AA6C  7C 7F 1B 78 */	mr r31, r3
/* 8039AA70  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039AA74  38 63 00 02 */	addi r3, r3, 2
/* 8039AA78  4B FF FF 51 */	bl mEv_EventOFF
/* 8039AA7C  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039AA80  38 63 00 06 */	addi r3, r3, 6
/* 8039AA84  4B FF FF 45 */	bl mEv_EventOFF
/* 8039AA88  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039AA8C  38 63 00 0A */	addi r3, r3, 0xa
/* 8039AA90  4B FF FF 39 */	bl mEv_EventOFF
/* 8039AA94  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039AA98  38 63 00 0E */	addi r3, r3, 0xe
/* 8039AA9C  4B FF FF 2D */	bl mEv_EventOFF
/* 8039AAA0  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039AAA4  38 63 00 12 */	addi r3, r3, 0x12
/* 8039AAA8  4B FF FF 21 */	bl mEv_EventOFF
/* 8039AAAC  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039AAB0  38 63 00 16 */	addi r3, r3, 0x16
/* 8039AAB4  4B FF FF 15 */	bl mEv_EventOFF
/* 8039AAB8  38 60 00 11 */	li r3, 0x11
/* 8039AABC  38 80 00 00 */	li r4, 0
/* 8039AAC0  48 00 33 0D */	bl mEv_get_save_area
/* 8039AAC4  28 03 00 00 */	cmplwi r3, 0
/* 8039AAC8  41 82 00 10 */	beq lbl_8039AAD8
/* 8039AACC  57 E0 08 3C */	slwi r0, r31, 1
/* 8039AAD0  38 80 00 00 */	li r4, 0
/* 8039AAD4  7C 83 03 2E */	sthx r4, r3, r0
lbl_8039AAD8:
/* 8039AAD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039AADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039AAE0  7C 08 03 A6 */	mtlr r0
/* 8039AAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8039AAE8  4E 80 00 20 */	blr 
