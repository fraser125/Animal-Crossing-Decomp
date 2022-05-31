lbl_80412E7C:
/* 80412E7C  38 00 00 01 */	li r0, 1
/* 80412E80  3C 80 80 64 */	lis r4, lit_472@ha /* 0x806439AC@ha */
/* 80412E84  98 03 01 08 */	stb r0, 0x108(r3)
/* 80412E88  C0 04 39 AC */	lfs f0, lit_472@l(r4)  /* 0x806439AC@l */
/* 80412E8C  C0 23 00 6C */	lfs f1, 0x6c(r3)
/* 80412E90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80412E94  40 81 00 14 */	ble lbl_80412EA8
/* 80412E98  3C 80 80 41 */	lis r4, aBALL_process_air@ha /* 0x80412DB0@ha */
/* 80412E9C  38 04 2D B0 */	addi r0, r4, aBALL_process_air@l /* 0x80412DB0@l */
/* 80412EA0  90 03 01 E0 */	stw r0, 0x1e0(r3)
/* 80412EA4  4E 80 00 20 */	blr 
lbl_80412EA8:
/* 80412EA8  3C 80 80 41 */	lis r4, aBALL_process_ground@ha /* 0x80412EB8@ha */
/* 80412EAC  38 04 2E B8 */	addi r0, r4, aBALL_process_ground@l /* 0x80412EB8@l */
/* 80412EB0  90 03 01 E0 */	stw r0, 0x1e0(r3)
/* 80412EB4  4E 80 00 20 */	blr 
