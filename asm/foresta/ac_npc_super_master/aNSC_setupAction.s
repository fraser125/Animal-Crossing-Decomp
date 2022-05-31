lbl_80585FC0:
/* 80585FC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80585FC4  7C 08 02 A6 */	mflr r0
/* 80585FC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80585FCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80585FD0  4B B1 4F 05 */	bl func_8009AED4
/* 80585FD4  7C BF 2B 78 */	mr r31, r5
/* 80585FD8  7C 7D 1B 78 */	mr r29, r3
/* 80585FDC  3C A0 80 6C */	lis r5, process@ha /* 0x806C1AB4@ha */
/* 80585FE0  93 E3 09 94 */	stw r31, 0x994(r3)
/* 80585FE4  57 E0 10 3A */	slwi r0, r31, 2
/* 80585FE8  7C 9E 23 78 */	mr r30, r4
/* 80585FEC  38 A5 1A B4 */	addi r5, r5, process@l /* 0x806C1AB4@l */
/* 80585FF0  7F E4 FB 78 */	mr r4, r31
/* 80585FF4  7C 05 00 2E */	lwzx r0, r5, r0
/* 80585FF8  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80585FFC  4B FF AB 3D */	bl func_80580B38
/* 80586000  7F A3 EB 78 */	mr r3, r29
/* 80586004  7F C4 F3 78 */	mr r4, r30
/* 80586008  7F E5 FB 78 */	mr r5, r31
/* 8058600C  4B FF FF 81 */	bl aNSC_init_proc
/* 80586010  39 61 00 20 */	addi r11, r1, 0x20
/* 80586014  4B B1 4F 0D */	bl func_8009AF20
/* 80586018  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058601C  7C 08 03 A6 */	mtlr r0
/* 80586020  38 21 00 20 */	addi r1, r1, 0x20
/* 80586024  4E 80 00 20 */	blr 
