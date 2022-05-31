lbl_803FA5F0:
/* 803FA5F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FA5F4  7C 08 02 A6 */	mflr r0
/* 803FA5F8  3C 60 81 1A */	lis r3, l_mcd_card_private_table@ha /* 0x81198814@ha */
/* 803FA5FC  38 80 00 13 */	li r4, 0x13
/* 803FA600  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FA604  38 63 88 14 */	addi r3, r3, l_mcd_card_private_table@l /* 0x81198814@l */
/* 803FA608  4B FF FF 89 */	bl mCD_ClearCardPrivateTable_com
/* 803FA60C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FA610  7C 08 03 A6 */	mtlr r0
/* 803FA614  38 21 00 10 */	addi r1, r1, 0x10
/* 803FA618  4E 80 00 20 */	blr 
