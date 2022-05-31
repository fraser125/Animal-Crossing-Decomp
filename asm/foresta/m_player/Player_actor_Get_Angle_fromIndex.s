lbl_804D7198:
/* 804D7198  2C 03 00 00 */	cmpwi r3, 0
/* 804D719C  41 80 00 20 */	blt lbl_804D71BC
/* 804D71A0  2C 03 00 04 */	cmpwi r3, 4
/* 804D71A4  40 80 00 18 */	bge lbl_804D71BC
/* 804D71A8  3C 80 80 64 */	lis r4, Player_actor_wall_angle@ha /* 0x80646A40@ha */
/* 804D71AC  54 60 08 3C */	slwi r0, r3, 1
/* 804D71B0  38 64 6A 40 */	addi r3, r4, Player_actor_wall_angle@l /* 0x80646A40@l */
/* 804D71B4  7C 63 02 AE */	lhax r3, r3, r0
/* 804D71B8  4E 80 00 20 */	blr 
lbl_804D71BC:
/* 804D71BC  38 60 00 00 */	li r3, 0
/* 804D71C0  4E 80 00 20 */	blr 
