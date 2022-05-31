lbl_80515D14:
/* 80515D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80515D18  7C 08 02 A6 */	mflr r0
/* 80515D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80515D20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80515D24  7C 7F 1B 78 */	mr r31, r3
/* 80515D28  38 60 00 08 */	li r3, 8
/* 80515D2C  7F E4 FB 78 */	mr r4, r31
/* 80515D30  4B E8 45 35 */	bl mDemo_Check
/* 80515D34  2C 03 00 01 */	cmpwi r3, 1
/* 80515D38  40 82 00 24 */	bne lbl_80515D5C
/* 80515D3C  4B E8 46 D5 */	bl mDemo_Check_ListenAble
/* 80515D40  2C 03 00 00 */	cmpwi r3, 0
/* 80515D44  40 82 00 18 */	bne lbl_80515D5C
/* 80515D48  4B E8 46 6D */	bl mDemo_Set_ListenAble
/* 80515D4C  7F E3 FB 78 */	mr r3, r31
/* 80515D50  38 80 00 03 */	li r4, 3
/* 80515D54  48 00 05 95 */	bl aMSC_setupAction
/* 80515D58  48 00 00 18 */	b lbl_80515D70
lbl_80515D5C:
/* 80515D5C  3C 60 80 51 */	lis r3, aMSC_set_force_talk_info_talk_request@ha /* 0x80515CD8@ha */
/* 80515D60  7F E4 FB 78 */	mr r4, r31
/* 80515D64  38 A3 5C D8 */	addi r5, r3, aMSC_set_force_talk_info_talk_request@l /* 0x80515CD8@l */
/* 80515D68  38 60 00 08 */	li r3, 8
/* 80515D6C  4B E8 43 F1 */	bl mDemo_Request
lbl_80515D70:
/* 80515D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80515D74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80515D78  7C 08 03 A6 */	mtlr r0
/* 80515D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80515D80  4E 80 00 20 */	blr 
