lbl_80516CC4:
/* 80516CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80516CC8  7C 08 02 A6 */	mflr r0
/* 80516CCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80516CD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80516CD4  7C 7F 1B 78 */	mr r31, r3
/* 80516CD8  4B EB B2 29 */	bl mNpc_GetNpcLooks
/* 80516CDC  80 BF 09 9C */	lwz r5, 0x99c(r31)
/* 80516CE0  3C 80 80 6A */	lis r4, msg_base_646@ha /* 0x8069FDC4@ha */
/* 80516CE4  54 60 10 3A */	slwi r0, r3, 2
/* 80516CE8  38 64 FD C4 */	addi r3, r4, msg_base_646@l /* 0x8069FDC4@l */
/* 80516CEC  2C 05 00 07 */	cmpwi r5, 7
/* 80516CF0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80516CF4  40 80 00 18 */	bge lbl_80516D0C
/* 80516CF8  2C 05 00 05 */	cmpwi r5, 5
/* 80516CFC  40 80 00 08 */	bge lbl_80516D04
/* 80516D00  48 00 00 0C */	b lbl_80516D0C
lbl_80516D04:
/* 80516D04  38 63 00 0D */	addi r3, r3, 0xd
/* 80516D08  48 00 00 10 */	b lbl_80516D18
lbl_80516D0C:
/* 80516D0C  38 05 FF FF */	addi r0, r5, -1
/* 80516D10  54 00 10 3A */	slwi r0, r0, 2
/* 80516D14  7C 63 02 14 */	add r3, r3, r0
lbl_80516D18:
/* 80516D18  4B E8 17 FD */	bl mDemo_Set_msg_num
/* 80516D1C  38 60 00 00 */	li r3, 0
/* 80516D20  4B E8 1C 01 */	bl mDemo_Set_camera
/* 80516D24  4B FF FF 55 */	bl aCD0_set_free_str
/* 80516D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80516D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80516D30  7C 08 03 A6 */	mtlr r0
/* 80516D34  38 21 00 10 */	addi r1, r1, 0x10
/* 80516D38  4E 80 00 20 */	blr 
