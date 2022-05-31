lbl_80538624:
/* 80538624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80538628  7C 08 02 A6 */	mflr r0
/* 8053862C  3C C0 80 6A */	lis r6, think_idx_4466@ha /* 0x806A29B0@ha */
/* 80538630  90 01 00 14 */	stw r0, 0x14(r1)
/* 80538634  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 80538638  98 A3 07 DD */	stb r5, 0x7dd(r3)
/* 8053863C  38 A6 29 B0 */	addi r5, r6, think_idx_4466@l /* 0x806A29B0@l */
/* 80538640  7C A5 00 2E */	lwzx r5, r5, r0
/* 80538644  4B FF E1 F9 */	bl aNPC_think_init_proc
/* 80538648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053864C  7C 08 03 A6 */	mtlr r0
/* 80538650  38 21 00 10 */	addi r1, r1, 0x10
/* 80538654  4E 80 00 20 */	blr 
