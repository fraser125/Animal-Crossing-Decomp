lbl_80537110:
/* 80537110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80537114  7C 08 02 A6 */	mflr r0
/* 80537118  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053711C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80537120  3B E0 00 00 */	li r31, 0
/* 80537124  93 C1 00 08 */	stw r30, 8(r1)
/* 80537128  7C 7E 1B 78 */	mr r30, r3
/* 8053712C  4B FF 83 D1 */	bl aNPC_check_entrance_humanoid
/* 80537130  2C 03 00 01 */	cmpwi r3, 1
/* 80537134  40 82 00 24 */	bne lbl_80537158
/* 80537138  3C 80 80 6A */	lis r4, data_806A1400@ha /* 0x806A1400@ha */
/* 8053713C  7F C3 F3 78 */	mr r3, r30
/* 80537140  38 E4 14 00 */	addi r7, r4, data_806A1400@l /* 0x806A1400@l */
/* 80537144  38 A0 00 00 */	li r5, 0
/* 80537148  38 80 00 01 */	li r4, 1
/* 8053714C  38 C0 00 00 */	li r6, 0
/* 80537150  4B FF A4 AD */	bl aNPC_set_request_act
/* 80537154  3B E0 00 01 */	li r31, 1
lbl_80537158:
/* 80537158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053715C  7F E3 FB 78 */	mr r3, r31
/* 80537160  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80537164  83 C1 00 08 */	lwz r30, 8(r1)
/* 80537168  7C 08 03 A6 */	mtlr r0
/* 8053716C  38 21 00 10 */	addi r1, r1, 0x10
/* 80537170  4E 80 00 20 */	blr 
