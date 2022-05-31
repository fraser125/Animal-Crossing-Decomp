lbl_80415E1C:
/* 80415E1C  80 83 02 B8 */	lwz r4, 0x2b8(r3)
/* 80415E20  3C 60 80 64 */	lis r3, data_80643AB4@ha /* 0x80643AB4@ha */
/* 80415E24  38 03 3A B4 */	addi r0, r3, data_80643AB4@l /* 0x80643AB4@l */
/* 80415E28  1C 64 00 3C */	mulli r3, r4, 0x3c
/* 80415E2C  7C 60 1A 14 */	add r3, r0, r3
/* 80415E30  4E 80 00 20 */	blr 
