lbl_8062BC34:
/* 8062BC34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062BC38  7C 08 02 A6 */	mflr r0
/* 8062BC3C  3D 00 DB 06 */	lis r8, 0xdb06
/* 8062BC40  38 80 00 00 */	li r4, 0
/* 8062BC44  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062BC48  38 00 00 00 */	li r0, 0
/* 8062BC4C  38 A0 00 00 */	li r5, 0
/* 8062BC50  38 C0 00 00 */	li r6, 0
/* 8062BC54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062BC58  38 E0 00 00 */	li r7, 0
/* 8062BC5C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8062BC60  7C 7E 1B 78 */	mr r30, r3
/* 8062BC64  83 E3 00 00 */	lwz r31, 0(r3)
/* 8062BC68  81 5F 02 D0 */	lwz r10, 0x2d0(r31)
/* 8062BC6C  7F E3 FB 78 */	mr r3, r31
/* 8062BC70  39 2A 00 08 */	addi r9, r10, 8
/* 8062BC74  91 3F 02 D0 */	stw r9, 0x2d0(r31)
/* 8062BC78  91 0A 00 00 */	stw r8, 0(r10)
/* 8062BC7C  90 0A 00 04 */	stw r0, 4(r10)
/* 8062BC80  4B DB 9A 0D */	bl DisplayList_initialize
/* 8062BC84  3C 60 80 6D */	lis r3, data_806D4858@ha /* 0x806D4858@ha */
/* 8062BC88  80 03 48 58 */	lwz r0, data_806D4858@l(r3)  /* 0x806D4858@l */
/* 8062BC8C  2C 00 00 00 */	cmpwi r0, 0
/* 8062BC90  40 82 00 40 */	bne lbl_8062BCD0
/* 8062BC94  3C 7E 00 02 */	addis r3, r30, 2
/* 8062BC98  88 03 5A 66 */	lbz r0, 0x5a66(r3)
/* 8062BC9C  28 00 00 02 */	cmplwi r0, 2
/* 8062BCA0  41 80 00 0C */	blt lbl_8062BCAC
/* 8062BCA4  7F C3 F3 78 */	mr r3, r30
/* 8062BCA8  4B FF FD AD */	bl nintendo_logo_draw
lbl_8062BCAC:
/* 8062BCAC  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8062BCB0  3C 9E 00 02 */	addis r4, r30, 2
/* 8062BCB4  38 61 00 08 */	addi r3, r1, 8
/* 8062BCB8  90 01 00 08 */	stw r0, 8(r1)
/* 8062BCBC  80 04 5A 58 */	lwz r0, 0x5a58(r4)
/* 8062BCC0  54 04 C2 3E */	srwi r4, r0, 8
/* 8062BCC4  4B DB 9C D5 */	bl fade_black_draw
/* 8062BCC8  80 01 00 08 */	lwz r0, 8(r1)
/* 8062BCCC  90 1F 02 E0 */	stw r0, 0x2e0(r31)
lbl_8062BCD0:
/* 8062BCD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062BCD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062BCD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8062BCDC  7C 08 03 A6 */	mtlr r0
/* 8062BCE0  38 21 00 20 */	addi r1, r1, 0x20
/* 8062BCE4  4E 80 00 20 */	blr 
