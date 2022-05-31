lbl_803A2F44:
/* 803A2F44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A2F48  7C 08 02 A6 */	mflr r0
/* 803A2F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A2F50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A2F54  7C 7F 1B 79 */	or. r31, r3, r3
/* 803A2F58  41 82 00 70 */	beq lbl_803A2FC8
/* 803A2F5C  3C 60 81 16 */	lis r3, mFM_pal_area@ha /* 0x811678F8@ha */
/* 803A2F60  38 80 01 60 */	li r4, 0x160
/* 803A2F64  38 63 78 F8 */	addi r3, r3, mFM_pal_area@l /* 0x811678F8@l */
/* 803A2F68  4B CB A1 01 */	bl bzero
/* 803A2F6C  3C 60 81 16 */	lis r3, mFM_pal_area@ha /* 0x811678F8@ha */
/* 803A2F70  39 23 78 F8 */	addi r9, r3, mFM_pal_area@l /* 0x811678F8@l */
/* 803A2F74  91 3F 00 00 */	stw r9, 0(r31)
/* 803A2F78  38 89 00 20 */	addi r4, r9, 0x20
/* 803A2F7C  38 69 00 40 */	addi r3, r9, 0x40
/* 803A2F80  38 09 00 60 */	addi r0, r9, 0x60
/* 803A2F84  90 9F 00 04 */	stw r4, 4(r31)
/* 803A2F88  39 09 00 80 */	addi r8, r9, 0x80
/* 803A2F8C  38 E9 00 A0 */	addi r7, r9, 0xa0
/* 803A2F90  38 C9 00 C0 */	addi r6, r9, 0xc0
/* 803A2F94  90 7F 00 08 */	stw r3, 8(r31)
/* 803A2F98  38 A9 00 E0 */	addi r5, r9, 0xe0
/* 803A2F9C  38 89 01 00 */	addi r4, r9, 0x100
/* 803A2FA0  38 69 01 20 */	addi r3, r9, 0x120
/* 803A2FA4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 803A2FA8  38 09 01 40 */	addi r0, r9, 0x140
/* 803A2FAC  91 1F 00 10 */	stw r8, 0x10(r31)
/* 803A2FB0  90 FF 00 14 */	stw r7, 0x14(r31)
/* 803A2FB4  90 DF 00 18 */	stw r6, 0x18(r31)
/* 803A2FB8  90 BF 00 1C */	stw r5, 0x1c(r31)
/* 803A2FBC  90 9F 00 20 */	stw r4, 0x20(r31)
/* 803A2FC0  90 7F 00 24 */	stw r3, 0x24(r31)
/* 803A2FC4  90 1F 00 28 */	stw r0, 0x28(r31)
lbl_803A2FC8:
/* 803A2FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A2FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A2FD0  7C 08 03 A6 */	mtlr r0
/* 803A2FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 803A2FD8  4E 80 00 20 */	blr 
