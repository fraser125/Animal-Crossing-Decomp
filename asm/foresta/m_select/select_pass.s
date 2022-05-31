lbl_80627F50:
/* 80627F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80627F54  7C 08 02 A6 */	mflr r0
/* 80627F58  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80627F5C  3C 80 80 6D */	lis r4, nf_tbl@ha /* 0x806D3F84@ha */
/* 80627F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80627F64  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80627F68  38 04 3F 84 */	addi r0, r4, nf_tbl@l /* 0x806D3F84@l */
/* 80627F6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80627F70  3F E5 00 02 */	addis r31, r5, 2
/* 80627F74  80 9F 66 A4 */	lwz r4, 0x66a4(r31)
/* 80627F78  88 BF 61 21 */	lbz r5, 0x6121(r31)
/* 80627F7C  1C 84 00 0C */	mulli r4, r4, 0xc
/* 80627F80  88 DF 61 22 */	lbz r6, 0x6122(r31)
/* 80627F84  88 FF 61 20 */	lbz r7, 0x6120(r31)
/* 80627F88  7D 00 22 14 */	add r8, r0, r4
/* 80627F8C  1C A5 00 3C */	mulli r5, r5, 0x3c
/* 80627F90  81 88 00 04 */	lwz r12, 4(r8)
/* 80627F94  28 0C 00 00 */	cmplwi r12, 0
/* 80627F98  1C 86 0E 10 */	mulli r4, r6, 0xe10
/* 80627F9C  7C 05 3A 14 */	add r0, r5, r7
/* 80627FA0  7C 04 02 14 */	add r0, r4, r0
/* 80627FA4  90 1F 61 1C */	stw r0, 0x611c(r31)
/* 80627FA8  41 82 00 10 */	beq lbl_80627FB8
/* 80627FAC  80 88 00 08 */	lwz r4, 8(r8)
/* 80627FB0  7D 89 03 A6 */	mtctr r12
/* 80627FB4  4E 80 04 21 */	bctrl 
lbl_80627FB8:
/* 80627FB8  38 00 FF FF */	li r0, -1
/* 80627FBC  90 1F 66 A4 */	stw r0, 0x66a4(r31)
/* 80627FC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80627FC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80627FC8  7C 08 03 A6 */	mtlr r0
/* 80627FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80627FD0  4E 80 00 20 */	blr 
