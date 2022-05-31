lbl_80629FCC:
/* 80629FCC  38 00 00 00 */	li r0, 0
/* 80629FD0  3C 80 80 63 */	lis r4, famicom_emu_init@ha /* 0x8062D564@ha */
/* 80629FD4  98 03 00 9F */	stb r0, 0x9f(r3)
/* 80629FD8  38 84 D5 64 */	addi r4, r4, famicom_emu_init@l /* 0x8062D564@l */
/* 80629FDC  38 00 00 E0 */	li r0, 0xe0
/* 80629FE0  90 83 00 0C */	stw r4, 0xc(r3)
/* 80629FE4  90 03 00 10 */	stw r0, 0x10(r3)
/* 80629FE8  4E 80 00 20 */	blr 
