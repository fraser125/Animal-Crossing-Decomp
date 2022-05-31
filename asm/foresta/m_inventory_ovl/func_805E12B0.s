lbl_805E12B0:
/* 805E12B0  2C 03 00 00 */	cmpwi r3, 0
/* 805E12B4  41 80 00 20 */	blt lbl_805E12D4
/* 805E12B8  2C 03 00 04 */	cmpwi r3, 4
/* 805E12BC  40 80 00 18 */	bge lbl_805E12D4
/* 805E12C0  3C 80 80 6D */	lis r4, player_main_animation_index_table@ha /* 0x806CD318@ha */
/* 805E12C4  54 60 08 3C */	slwi r0, r3, 1
/* 805E12C8  38 64 D3 18 */	addi r3, r4, player_main_animation_index_table@l /* 0x806CD318@l */
/* 805E12CC  7C 63 02 2E */	lhzx r3, r3, r0
/* 805E12D0  4E 80 00 20 */	blr 
lbl_805E12D4:
/* 805E12D4  38 60 FF FF */	li r3, -1
/* 805E12D8  4E 80 00 20 */	blr 
