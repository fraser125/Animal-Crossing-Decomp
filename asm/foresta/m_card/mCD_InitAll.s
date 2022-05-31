lbl_803FA8CC:
/* 803FA8CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FA8D0  7C 08 02 A6 */	mflr r0
/* 803FA8D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FA8D8  4B FF D2 65 */	bl mCD_StartSetCardBgInfo
/* 803FA8DC  4B FF FC 8D */	bl mCD_ClearMemMgr
/* 803FA8E0  4B FF FC 4D */	bl mCD_ClearKeepLand
/* 803FA8E4  4B FF FD 0D */	bl mCD_ClearCardPrivateTable
/* 803FA8E8  3C 60 81 1A */	lis r3, l_mcd_card_private@ha /* 0x81198BF0@ha */
/* 803FA8EC  38 80 00 01 */	li r4, 1
/* 803FA8F0  38 63 8B F0 */	addi r3, r3, l_mcd_card_private@l /* 0x81198BF0@l */
/* 803FA8F4  4B FF FC 9D */	bl mCD_ClearCardPrivateTable_com
/* 803FA8F8  48 00 01 AD */	bl mCD_clear_all_control
/* 803FA8FC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 803FA900  3C 60 81 1A */	lis r3, l_mcd_foreigner_file@ha /* 0x81198C38@ha */
/* 803FA904  3C 80 80 66 */	lis r4, l_mcd_copy_protect@ha /* 0x8065E484@ha */
/* 803FA908  38 05 FF FF */	addi r0, r5, 0xFFFF /* 0x0000FFFF@l */
/* 803FA90C  38 63 8C 38 */	addi r3, r3, l_mcd_foreigner_file@l /* 0x81198C38@l */
/* 803FA910  B0 04 E4 84 */	sth r0, l_mcd_copy_protect@l(r4)  /* 0x8065E484@l */
/* 803FA914  4B FF FD 51 */	bl mCD_ClearForeignerFile
/* 803FA918  3C 60 81 1A */	lis r3, l_keep_noLandCode@ha /* 0x8119CC38@ha */
/* 803FA91C  38 63 CC 38 */	addi r3, r3, l_keep_noLandCode@l /* 0x8119CC38@l */
/* 803FA920  4B FF FD 99 */	bl mCD_ClearNoLandProtectCode
/* 803FA924  4B FF CC E5 */	bl func_803F7608
/* 803FA928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FA92C  7C 08 03 A6 */	mtlr r0
/* 803FA930  38 21 00 10 */	addi r1, r1, 0x10
/* 803FA934  4E 80 00 20 */	blr 
