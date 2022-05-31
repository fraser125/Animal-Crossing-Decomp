lbl_80414F2C:
/* 80414F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80414F30  7C 08 02 A6 */	mflr r0
/* 80414F34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80414F38  38 A0 00 01 */	li r5, 1
/* 80414F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80414F40  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80414F44  3C 63 00 02 */	addis r3, r3, 2
/* 80414F48  38 C0 00 01 */	li r6, 1
/* 80414F4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80414F50  3B E3 34 40 */	addi r31, r3, 0x3440
/* 80414F54  7F E4 FB 78 */	mr r4, r31
/* 80414F58  93 C1 00 08 */	stw r30, 8(r1)
/* 80414F5C  3B C3 64 E4 */	addi r30, r3, 0x64e4
/* 80414F60  7F C3 F3 78 */	mr r3, r30
/* 80414F64  4B FB AB 55 */	bl mNpc_SetNpcList
/* 80414F68  A0 7E 00 00 */	lhz r3, 0(r30)
/* 80414F6C  39 00 FF F1 */	li r8, -15
/* 80414F70  88 9F 08 99 */	lbz r4, 0x899(r31)
/* 80414F74  39 20 00 00 */	li r9, 0
/* 80414F78  88 BF 08 9A */	lbz r5, 0x89a(r31)
/* 80414F7C  88 DF 08 9B */	lbz r6, 0x89b(r31)
/* 80414F80  88 FF 08 9C */	lbz r7, 0x89c(r31)
/* 80414F84  4B F9 38 09 */	bl mFI_RegistMoveActorList
/* 80414F88  7C 7E 1B 78 */	mr r30, r3
/* 80414F8C  2C 1E 00 01 */	cmpwi r30, 1
/* 80414F90  40 82 00 0C */	bne lbl_80414F9C
/* 80414F94  7F E3 FB 78 */	mr r3, r31
/* 80414F98  4B FC 25 89 */	bl mNPS_set_island_schedule_area
lbl_80414F9C:
/* 80414F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80414FA0  7F C3 F3 78 */	mr r3, r30
/* 80414FA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80414FA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80414FAC  7C 08 03 A6 */	mtlr r0
/* 80414FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80414FB4  4E 80 00 20 */	blr 
