lbl_804F0F0C:
/* 804F0F0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804F0F10  7C 08 02 A6 */	mflr r0
/* 804F0F14  3C A0 80 64 */	lis r5, lit_3046@ha /* 0x80646E54@ha */
/* 804F0F18  38 63 01 74 */	addi r3, r3, 0x174
/* 804F0F1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F0F20  C0 25 6E 54 */	lfs f1, lit_3046@l(r5)  /* 0x80646E54@l */
/* 804F0F24  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804F0F28  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804F0F2C  7C 9E 23 78 */	mr r30, r4
/* 804F0F30  4B FE 66 D1 */	bl Player_actor_Check_AnimationFrame
/* 804F0F34  2C 03 00 00 */	cmpwi r3, 0
/* 804F0F38  41 82 00 6C */	beq lbl_804F0FA4
/* 804F0F3C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F0F40  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804F0F44  3F E3 00 02 */	addis r31, r3, 2
/* 804F0F48  80 7F 60 88 */	lwz r3, 0x6088(r31)
/* 804F0F4C  28 03 00 00 */	cmplwi r3, 0
/* 804F0F50  41 82 00 54 */	beq lbl_804F0FA4
/* 804F0F54  80 03 00 14 */	lwz r0, 0x14(r3)
/* 804F0F58  28 00 00 00 */	cmplwi r0, 0
/* 804F0F5C  41 82 00 48 */	beq lbl_804F0FA4
/* 804F0F60  80 DE 00 00 */	lwz r6, 0(r30)
/* 804F0F64  38 61 00 0C */	addi r3, r1, 0xc
/* 804F0F68  80 1E 00 04 */	lwz r0, 4(r30)
/* 804F0F6C  38 81 00 08 */	addi r4, r1, 8
/* 804F0F70  38 A1 00 10 */	addi r5, r1, 0x10
/* 804F0F74  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804F0F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F0F7C  80 1E 00 08 */	lwz r0, 8(r30)
/* 804F0F80  90 01 00 18 */	stw r0, 0x18(r1)
/* 804F0F84  4B EB 43 E5 */	bl mFI_Wpos2UtNum
/* 804F0F88  80 BF 60 88 */	lwz r5, 0x6088(r31)
/* 804F0F8C  38 60 00 01 */	li r3, 1
/* 804F0F90  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804F0F94  81 85 00 14 */	lwz r12, 0x14(r5)
/* 804F0F98  80 A1 00 08 */	lwz r5, 8(r1)
/* 804F0F9C  7D 89 03 A6 */	mtctr r12
/* 804F0FA0  4E 80 04 21 */	bctrl 
lbl_804F0FA4:
/* 804F0FA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804F0FA8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804F0FAC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804F0FB0  7C 08 03 A6 */	mtlr r0
/* 804F0FB4  38 21 00 30 */	addi r1, r1, 0x30
/* 804F0FB8  4E 80 00 20 */	blr 
