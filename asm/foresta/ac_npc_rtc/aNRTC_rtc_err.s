lbl_8057374C:
/* 8057374C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80573750  7C 08 02 A6 */	mflr r0
/* 80573754  90 01 00 14 */	stw r0, 0x14(r1)
/* 80573758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057375C  7C 7F 1B 78 */	mr r31, r3
/* 80573760  4B E4 BF 49 */	bl func_803BF6A8
/* 80573764  4B E4 D5 35 */	bl mMsg_Check_MainNormalContinue
/* 80573768  2C 03 00 01 */	cmpwi r3, 1
/* 8057376C  40 82 00 48 */	bne lbl_805737B4
/* 80573770  4B E0 FD D1 */	bl func_80383540
/* 80573774  4B E1 03 F9 */	bl mChoice_Get_ChoseNum
/* 80573778  2C 03 00 01 */	cmpwi r3, 1
/* 8057377C  41 82 00 24 */	beq lbl_805737A0
/* 80573780  40 80 00 34 */	bge lbl_805737B4
/* 80573784  2C 03 00 00 */	cmpwi r3, 0
/* 80573788  40 80 00 08 */	bge lbl_80573790
/* 8057378C  48 00 00 28 */	b lbl_805737B4
lbl_80573790:
/* 80573790  7F E3 FB 78 */	mr r3, r31
/* 80573794  38 80 00 03 */	li r4, 3
/* 80573798  48 00 05 B1 */	bl aNRTC_change_talk_proc
/* 8057379C  48 00 00 18 */	b lbl_805737B4
lbl_805737A0:
/* 805737A0  38 00 00 01 */	li r0, 1
/* 805737A4  7F E3 FB 78 */	mr r3, r31
/* 805737A8  90 1F 09 A8 */	stw r0, 0x9a8(r31)
/* 805737AC  38 80 00 0A */	li r4, 0xa
/* 805737B0  48 00 05 99 */	bl aNRTC_change_talk_proc
lbl_805737B4:
/* 805737B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805737B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805737BC  7C 08 03 A6 */	mtlr r0
/* 805737C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805737C4  4E 80 00 20 */	blr 
