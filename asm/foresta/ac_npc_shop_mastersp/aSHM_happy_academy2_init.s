lbl_8057E1E8:
/* 8057E1E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057E1EC  7C 08 02 A6 */	mflr r0
/* 8057E1F0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057E1F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057E1F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057E1FC  7C 7F 1B 78 */	mr r31, r3
/* 8057E200  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8057E204  3C 63 00 02 */	addis r3, r3, 2
/* 8057E208  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8057E20C  3C 63 20 00 */	addis r3, r3, 0x2000
/* 8057E210  38 63 00 0E */	addi r3, r3, 0xe
/* 8057E214  4B E1 C7 B5 */	bl mEv_EventOFF
/* 8057E218  38 00 00 18 */	li r0, 0x18
/* 8057E21C  7F E3 FB 78 */	mr r3, r31
/* 8057E220  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 8057E224  38 80 00 05 */	li r4, 5
/* 8057E228  4B FF E7 01 */	bl aSHM_set_start_avoid_pos
/* 8057E22C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057E230  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057E234  7C 08 03 A6 */	mtlr r0
/* 8057E238  38 21 00 10 */	addi r1, r1, 0x10
/* 8057E23C  4E 80 00 20 */	blr 
