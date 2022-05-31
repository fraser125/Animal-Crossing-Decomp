lbl_803F7B3C:
/* 803F7B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F7B40  7C 08 02 A6 */	mflr r0
/* 803F7B44  3C 60 81 17 */	lis r3, l_mcd_bg_info@ha /* 0x811715BC@ha */
/* 803F7B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F7B4C  38 63 15 BC */	addi r3, r3, l_mcd_bg_info@l /* 0x811715BC@l */
/* 803F7B50  4B FF FF C9 */	bl mCD_ClearCardBgInfo
/* 803F7B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F7B58  7C 08 03 A6 */	mtlr r0
/* 803F7B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 803F7B60  4E 80 00 20 */	blr 
