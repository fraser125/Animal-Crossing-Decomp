lbl_806210A8:
/* 806210A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806210AC  7C 08 02 A6 */	mflr r0
/* 806210B0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 806210B4  7C 66 1B 78 */	mr r6, r3
/* 806210B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806210BC  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 806210C0  3C 63 00 02 */	addis r3, r3, 2
/* 806210C4  38 A6 00 34 */	addi r5, r6, 0x34
/* 806210C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806210CC  7C 9F 23 78 */	mr r31, r4
/* 806210D0  38 86 00 10 */	addi r4, r6, 0x10
/* 806210D4  38 C6 00 40 */	addi r6, r6, 0x40
/* 806210D8  80 E3 60 9C */	lwz r7, 0x609c(r3)
/* 806210DC  7F E3 FB 78 */	mr r3, r31
/* 806210E0  81 87 00 1C */	lwz r12, 0x1c(r7)
/* 806210E4  7D 89 03 A6 */	mtctr r12
/* 806210E8  4E 80 04 21 */	bctrl 
/* 806210EC  81 5F 00 00 */	lwz r10, 0(r31)
/* 806210F0  3C C0 FA 00 */	lis r6, 0xFA00 /* 0xFA0000FF@ha */
/* 806210F4  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 806210F8  3C 80 80 CC */	lis r4, ef_takurami01_normal_render_mode@ha /* 0x80CC0590@ha */
/* 806210FC  81 2A 02 E0 */	lwz r9, 0x2e0(r10)
/* 80621100  3C 60 80 CC */	lis r3, ef_takurami01_kira_modelT@ha /* 0x80CC0400@ha */
/* 80621104  39 06 00 FF */	addi r8, r6, 0x00FF /* 0xFA0000FF@l */
/* 80621108  38 E0 FF FF */	li r7, -1
/* 8062110C  38 09 00 08 */	addi r0, r9, 8
/* 80621110  38 C5 00 20 */	addi r6, r5, 0x0020 /* 0xDB060020@l */
/* 80621114  90 0A 02 E0 */	stw r0, 0x2e0(r10)
/* 80621118  38 A4 05 90 */	addi r5, r4, ef_takurami01_normal_render_mode@l /* 0x80CC0590@l */
/* 8062111C  3C 80 DE 00 */	lis r4, 0xde00
/* 80621120  38 03 04 00 */	addi r0, r3, ef_takurami01_kira_modelT@l /* 0x80CC0400@l */
/* 80621124  91 09 00 00 */	stw r8, 0(r9)
/* 80621128  90 E9 00 04 */	stw r7, 4(r9)
/* 8062112C  80 EA 02 E0 */	lwz r7, 0x2e0(r10)
/* 80621130  38 67 00 08 */	addi r3, r7, 8
/* 80621134  90 6A 02 E0 */	stw r3, 0x2e0(r10)
/* 80621138  90 C7 00 00 */	stw r6, 0(r7)
/* 8062113C  90 A7 00 04 */	stw r5, 4(r7)
/* 80621140  80 AA 02 E0 */	lwz r5, 0x2e0(r10)
/* 80621144  38 65 00 08 */	addi r3, r5, 8
/* 80621148  90 6A 02 E0 */	stw r3, 0x2e0(r10)
/* 8062114C  90 85 00 00 */	stw r4, 0(r5)
/* 80621150  90 05 00 04 */	stw r0, 4(r5)
/* 80621154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80621158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062115C  7C 08 03 A6 */	mtlr r0
/* 80621160  38 21 00 10 */	addi r1, r1, 0x10
/* 80621164  4E 80 00 20 */	blr 
