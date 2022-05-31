lbl_8057C4B4:
/* 8057C4B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057C4B8  7C 08 02 A6 */	mflr r0
/* 8057C4BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057C4C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8057C4C4  4B B1 EA 11 */	bl func_8009AED4
/* 8057C4C8  7C BF 2B 78 */	mr r31, r5
/* 8057C4CC  7C 7D 1B 78 */	mr r29, r3
/* 8057C4D0  3C A0 80 6C */	lis r5, process@ha /* 0x806C0570@ha */
/* 8057C4D4  93 E3 09 94 */	stw r31, 0x994(r3)
/* 8057C4D8  57 E0 10 3A */	slwi r0, r31, 2
/* 8057C4DC  7C 9E 23 78 */	mr r30, r4
/* 8057C4E0  38 A5 05 70 */	addi r5, r5, process@l /* 0x806C0570@l */
/* 8057C4E4  7F E4 FB 78 */	mr r4, r31
/* 8057C4E8  7C 05 00 2E */	lwzx r0, r5, r0
/* 8057C4EC  90 03 09 9C */	stw r0, 0x99c(r3)
/* 8057C4F0  4B FF AB 3D */	bl func_8057702C
/* 8057C4F4  7F A3 EB 78 */	mr r3, r29
/* 8057C4F8  7F C4 F3 78 */	mr r4, r30
/* 8057C4FC  7F E5 FB 78 */	mr r5, r31
/* 8057C500  4B FF FF 81 */	bl aNSC_init_proc
/* 8057C504  39 61 00 20 */	addi r11, r1, 0x20
/* 8057C508  4B B1 EA 19 */	bl func_8009AF20
/* 8057C50C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057C510  7C 08 03 A6 */	mtlr r0
/* 8057C514  38 21 00 20 */	addi r1, r1, 0x20
/* 8057C518  4E 80 00 20 */	blr 
