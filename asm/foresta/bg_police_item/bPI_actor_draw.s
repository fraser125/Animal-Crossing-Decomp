lbl_804BE764:
/* 804BE764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BE768  7C 08 02 A6 */	mflr r0
/* 804BE76C  3C A0 81 1D */	lis r5, draw_work@ha /* 0x811CFF00@ha */
/* 804BE770  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BE774  94 85 FF 00 */	stwu r4, draw_work@l(r5)  /* 0x811CFF00@l */
/* 804BE778  80 04 00 00 */	lwz r0, 0(r4)
/* 804BE77C  90 05 00 04 */	stw r0, 4(r5)
/* 804BE780  80 03 01 74 */	lwz r0, 0x174(r3)
/* 804BE784  2C 00 00 01 */	cmpwi r0, 1
/* 804BE788  40 82 00 10 */	bne lbl_804BE798
/* 804BE78C  38 03 01 74 */	addi r0, r3, 0x174
/* 804BE790  90 05 00 08 */	stw r0, 8(r5)
/* 804BE794  4B FF FF 35 */	bl bPI_draw_item
lbl_804BE798:
/* 804BE798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BE79C  7C 08 03 A6 */	mtlr r0
/* 804BE7A0  38 21 00 10 */	addi r1, r1, 0x10
/* 804BE7A4  4E 80 00 20 */	blr 
