lbl_80538230:
/* 80538230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80538234  7C 08 02 A6 */	mflr r0
/* 80538238  3C C0 80 6A */	lis r6, think_idx_4373@ha /* 0x806A297C@ha */
/* 8053823C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80538240  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 80538244  38 C6 29 7C */	addi r6, r6, think_idx_4373@l /* 0x806A297C@l */
/* 80538248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053824C  54 BF 06 3E */	clrlwi r31, r5, 0x18
/* 80538250  93 C1 00 08 */	stw r30, 8(r1)
/* 80538254  7C 7E 1B 78 */	mr r30, r3
/* 80538258  98 A3 07 DD */	stb r5, 0x7dd(r3)
/* 8053825C  7C A6 00 2E */	lwzx r5, r6, r0
/* 80538260  4B FF E5 DD */	bl aNPC_think_init_proc
/* 80538264  3C 80 80 6A */	lis r4, hide_flg@ha /* 0x806A298C@ha */
/* 80538268  7F C3 F3 78 */	mr r3, r30
/* 8053826C  38 84 29 8C */	addi r4, r4, hide_flg@l /* 0x806A298C@l */
/* 80538270  7C 84 F8 AE */	lbzx r4, r4, r31
/* 80538274  4B FF FA 6D */	bl aNPC_set_hide_flg
/* 80538278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053827C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80538280  83 C1 00 08 */	lwz r30, 8(r1)
/* 80538284  7C 08 03 A6 */	mtlr r0
/* 80538288  38 21 00 10 */	addi r1, r1, 0x10
/* 8053828C  4E 80 00 20 */	blr 
