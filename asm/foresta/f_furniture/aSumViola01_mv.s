lbl_8063B7B0:
/* 8063B7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063B7B4  7C 08 02 A6 */	mflr r0
/* 8063B7B8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8063B7BC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8063B7C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063B7C4  3C A5 00 02 */	addis r5, r5, 2
/* 8063B7C8  80 A5 60 8C */	lwz r5, 0x608c(r5)
/* 8063B7CC  28 05 00 00 */	cmplwi r5, 0
/* 8063B7D0  41 82 00 14 */	beq lbl_8063B7E4
/* 8063B7D4  81 85 00 64 */	lwz r12, 0x64(r5)
/* 8063B7D8  38 A0 00 0B */	li r5, 0xb
/* 8063B7DC  7D 89 03 A6 */	mtctr r12
/* 8063B7E0  4E 80 04 21 */	bctrl 
lbl_8063B7E4:
/* 8063B7E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063B7E8  7C 08 03 A6 */	mtlr r0
/* 8063B7EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8063B7F0  4E 80 00 20 */	blr 
