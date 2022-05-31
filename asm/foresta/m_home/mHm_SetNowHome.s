lbl_803B2F70:
/* 803B2F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B2F74  7C 08 02 A6 */	mflr r0
/* 803B2F78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B2F7C  38 80 00 00 */	li r4, 0
/* 803B2F80  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B2F84  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B2F88  3C 63 00 02 */	addis r3, r3, 2
/* 803B2F8C  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 803B2F90  28 03 00 04 */	cmplwi r3, 4
/* 803B2F94  40 80 00 20 */	bge lbl_803B2FB4
/* 803B2F98  48 00 06 21 */	bl mHS_get_arrange_idx
/* 803B2F9C  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 803B2FA0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B2FA4  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803B2FA8  7C 60 22 14 */	add r3, r0, r4
/* 803B2FAC  3C 83 00 01 */	addis r4, r3, 1
/* 803B2FB0  38 84 9C E8 */	addi r4, r4, -25368
lbl_803B2FB4:
/* 803B2FB4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B2FB8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B2FBC  3C 63 00 02 */	addis r3, r3, 2
/* 803B2FC0  90 83 61 40 */	stw r4, 0x6140(r3)
/* 803B2FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B2FC8  7C 08 03 A6 */	mtlr r0
/* 803B2FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 803B2FD0  4E 80 00 20 */	blr 
