lbl_80586B64:
/* 80586B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80586B68  7C 08 02 A6 */	mflr r0
/* 80586B6C  3C A0 80 6C */	lis r5, proc@ha /* 0x806C1C10@ha */
/* 80586B70  2C 04 00 03 */	cmpwi r4, 3
/* 80586B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80586B78  54 80 10 3A */	slwi r0, r4, 2
/* 80586B7C  38 A5 1C 10 */	addi r5, r5, proc@l /* 0x806C1C10@l */
/* 80586B80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80586B84  7C 7F 1B 78 */	mr r31, r3
/* 80586B88  7C 05 00 2E */	lwzx r0, r5, r0
/* 80586B8C  90 03 09 94 */	stw r0, 0x994(r3)
/* 80586B90  40 82 00 1C */	bne lbl_80586BAC
/* 80586B94  38 60 FF F7 */	li r3, -9
/* 80586B98  4B E1 43 31 */	bl mEv_SetTitleDemo
/* 80586B9C  38 60 00 01 */	li r3, 1
/* 80586BA0  4B E1 1C 19 */	bl mDemo_Set_talk_return_demo_wait
/* 80586BA4  38 00 00 00 */	li r0, 0
/* 80586BA8  98 1F 09 AB */	stb r0, 0x9ab(r31)
lbl_80586BAC:
/* 80586BAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80586BB0  38 60 00 01 */	li r3, 1
/* 80586BB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80586BB8  7C 08 03 A6 */	mtlr r0
/* 80586BBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80586BC0  4E 80 00 20 */	blr 
