lbl_8039AC34:
/* 8039AC34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039AC38  7C 08 02 A6 */	mflr r0
/* 8039AC3C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039AC40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039AC44  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039AC48  3C 63 00 02 */	addis r3, r3, 2
/* 8039AC4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039AC50  3B E0 00 00 */	li r31, 0
/* 8039AC54  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 8039AC58  28 00 00 04 */	cmplwi r0, 4
/* 8039AC5C  40 80 00 20 */	bge lbl_8039AC7C
/* 8039AC60  3C 60 20 00 */	lis r3, 0x2000 /* 0x20000002@ha */
/* 8039AC64  38 63 00 02 */	addi r3, r3, 0x0002 /* 0x20000002@l */
/* 8039AC68  7C 63 02 14 */	add r3, r3, r0
/* 8039AC6C  4B FF FD AD */	bl mEv_CheckEvent
/* 8039AC70  2C 03 00 01 */	cmpwi r3, 1
/* 8039AC74  40 82 00 08 */	bne lbl_8039AC7C
/* 8039AC78  3B E0 00 01 */	li r31, 1
lbl_8039AC7C:
/* 8039AC7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039AC80  7F E3 FB 78 */	mr r3, r31
/* 8039AC84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039AC88  7C 08 03 A6 */	mtlr r0
/* 8039AC8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8039AC90  4E 80 00 20 */	blr 
