lbl_80556C24:
/* 80556C24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80556C28  7C 08 02 A6 */	mflr r0
/* 80556C2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80556C30  39 61 00 20 */	addi r11, r1, 0x20
/* 80556C34  4B B4 42 A1 */	bl func_8009AED4
/* 80556C38  7C 7F 1B 78 */	mr r31, r3
/* 80556C3C  3B A0 00 00 */	li r29, 0
/* 80556C40  7C 9E 23 78 */	mr r30, r4
/* 80556C44  4B FF FD 5D */	bl aMJN_chk_talk_demo_code
/* 80556C48  7F E4 FB 78 */	mr r4, r31
/* 80556C4C  38 60 00 08 */	li r3, 8
/* 80556C50  4B E4 36 15 */	bl mDemo_Check
/* 80556C54  2C 03 00 00 */	cmpwi r3, 0
/* 80556C58  40 82 00 18 */	bne lbl_80556C70
/* 80556C5C  80 BF 09 98 */	lwz r5, 0x998(r31)
/* 80556C60  7F E3 FB 78 */	mr r3, r31
/* 80556C64  7F C4 F3 78 */	mr r4, r30
/* 80556C68  48 00 04 11 */	bl aMJN_setup_think_proc
/* 80556C6C  3B A0 00 01 */	li r29, 1
lbl_80556C70:
/* 80556C70  7F A3 EB 78 */	mr r3, r29
/* 80556C74  39 61 00 20 */	addi r11, r1, 0x20
/* 80556C78  4B B4 42 A9 */	bl func_8009AF20
/* 80556C7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80556C80  7C 08 03 A6 */	mtlr r0
/* 80556C84  38 21 00 20 */	addi r1, r1, 0x20
/* 80556C88  4E 80 00 20 */	blr 
