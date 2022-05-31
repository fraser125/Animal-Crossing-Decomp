lbl_8042947C:
/* 8042947C  7C 80 07 34 */	extsh r0, r4
/* 80429480  3C 80 80 68 */	lis r4, process@ha /* 0x80683DBC@ha */
/* 80429484  54 00 10 3A */	slwi r0, r0, 2
/* 80429488  38 84 3D BC */	addi r4, r4, process@l /* 0x80683DBC@l */
/* 8042948C  7C 04 00 2E */	lwzx r0, r4, r0
/* 80429490  90 03 01 88 */	stw r0, 0x188(r3)
/* 80429494  4E 80 00 20 */	blr 
