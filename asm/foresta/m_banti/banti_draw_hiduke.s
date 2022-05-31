lbl_80377F24:
/* 80377F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80377F28  7C 08 02 A6 */	mflr r0
/* 80377F2C  54 A6 06 3E */	clrlwi r6, r5, 0x18
/* 80377F30  3C A0 81 13 */	lis r5, banti@ha /* 0x8112C968@ha */
/* 80377F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80377F38  64 C8 EB FF */	oris r8, r6, 0xebff
/* 80377F3C  64 C0 50 28 */	oris r0, r6, 0x5028
/* 80377F40  64 C9 FA 00 */	oris r9, r6, 0xfa00
/* 80377F44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80377F48  61 08 78 00 */	ori r8, r8, 0x7800
/* 80377F4C  3C C0 FB 00 */	lis r6, 0xfb00
/* 80377F50  60 00 28 00 */	ori r0, r0, 0x2800
/* 80377F54  93 C1 00 08 */	stw r30, 8(r1)
/* 80377F58  7C 7E 1B 78 */	mr r30, r3
/* 80377F5C  7C 9F 23 78 */	mr r31, r4
/* 80377F60  81 43 00 00 */	lwz r10, 0(r3)
/* 80377F64  38 EA 00 08 */	addi r7, r10, 8
/* 80377F68  90 E3 00 00 */	stw r7, 0(r3)
/* 80377F6C  38 E5 C9 68 */	addi r7, r5, banti@l /* 0x8112C968@l */
/* 80377F70  38 A7 00 1C */	addi r5, r7, 0x1c
/* 80377F74  91 2A 00 00 */	stw r9, 0(r10)
/* 80377F78  91 0A 00 04 */	stw r8, 4(r10)
/* 80377F7C  39 00 00 00 */	li r8, 0
/* 80377F80  81 43 00 00 */	lwz r10, 0(r3)
/* 80377F84  39 2A 00 08 */	addi r9, r10, 8
/* 80377F88  91 23 00 00 */	stw r9, 0(r3)
/* 80377F8C  90 CA 00 00 */	stw r6, 0(r10)
/* 80377F90  90 0A 00 04 */	stw r0, 4(r10)
/* 80377F94  88 C7 04 41 */	lbz r6, 0x441(r7)
/* 80377F98  88 E7 04 49 */	lbz r7, 0x449(r7)
/* 80377F9C  38 C6 FF FF */	addi r6, r6, -1
/* 80377FA0  38 E7 FF FF */	addi r7, r7, -1
/* 80377FA4  4B FF FE 6D */	bl banti_draw_hiduke_sub
/* 80377FA8  3C 80 81 13 */	lis r4, banti@ha /* 0x8112C968@ha */
/* 80377FAC  7F C3 F3 78 */	mr r3, r30
/* 80377FB0  38 E4 C9 68 */	addi r7, r4, banti@l /* 0x8112C968@l */
/* 80377FB4  7F E4 FB 78 */	mr r4, r31
/* 80377FB8  88 C7 04 3F */	lbz r6, 0x43f(r7)
/* 80377FBC  38 A7 00 CC */	addi r5, r7, 0xcc
/* 80377FC0  88 E7 04 47 */	lbz r7, 0x447(r7)
/* 80377FC4  39 00 00 01 */	li r8, 1
/* 80377FC8  38 C6 FF FF */	addi r6, r6, -1
/* 80377FCC  38 E7 FF FF */	addi r7, r7, -1
/* 80377FD0  4B FF FE 41 */	bl banti_draw_hiduke_sub
/* 80377FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80377FD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80377FDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80377FE0  7C 08 03 A6 */	mtlr r0
/* 80377FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80377FE8  4E 80 00 20 */	blr 
