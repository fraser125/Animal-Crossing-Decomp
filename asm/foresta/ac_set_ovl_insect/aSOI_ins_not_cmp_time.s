lbl_8049AC48:
/* 8049AC48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049AC4C  7C 08 02 A6 */	mflr r0
/* 8049AC50  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049AC54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049AC58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049AC5C  93 C1 00 08 */	stw r30, 8(r1)
/* 8049AC60  7C 7E 1B 78 */	mr r30, r3
/* 8049AC64  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8049AC68  3F E3 00 02 */	addis r31, r3, 2
/* 8049AC6C  88 7F 61 22 */	lbz r3, 0x6122(r31)
/* 8049AC70  4B FF FE 65 */	bl aSOI_hour_to_term
/* 8049AC74  80 9E 02 04 */	lwz r4, 0x204(r30)
/* 8049AC78  38 A0 00 00 */	li r5, 0
/* 8049AC7C  88 1F 61 25 */	lbz r0, 0x6125(r31)
/* 8049AC80  7C 04 00 00 */	cmpw r4, r0
/* 8049AC84  40 82 00 10 */	bne lbl_8049AC94
/* 8049AC88  80 1E 02 08 */	lwz r0, 0x208(r30)
/* 8049AC8C  7C 00 18 00 */	cmpw r0, r3
/* 8049AC90  41 82 00 08 */	beq lbl_8049AC98
lbl_8049AC94:
/* 8049AC94  38 A0 00 01 */	li r5, 1
lbl_8049AC98:
/* 8049AC98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049AC9C  7C A3 2B 78 */	mr r3, r5
/* 8049ACA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049ACA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049ACA8  7C 08 03 A6 */	mtlr r0
/* 8049ACAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8049ACB0  4E 80 00 20 */	blr 
