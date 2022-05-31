lbl_804D77B0:
/* 804D77B0  80 03 0D F4 */	lwz r0, 0xdf4(r3)
/* 804D77B4  2C 04 00 00 */	cmpwi r4, 0
/* 804D77B8  39 20 00 00 */	li r9, 0
/* 804D77BC  68 08 00 01 */	xori r8, r0, 1
/* 804D77C0  55 07 10 3A */	slwi r7, r8, 2
/* 804D77C4  7C C3 3A 14 */	add r6, r3, r7
/* 804D77C8  80 06 0D E4 */	lwz r0, 0xde4(r6)
/* 804D77CC  91 03 0D F4 */	stw r8, 0xdf4(r3)
/* 804D77D0  41 80 00 14 */	blt lbl_804D77E4
/* 804D77D4  7C 04 00 00 */	cmpw r4, r0
/* 804D77D8  41 82 00 1C */	beq lbl_804D77F4
/* 804D77DC  90 86 0D E4 */	stw r4, 0xde4(r6)
/* 804D77E0  48 00 00 14 */	b lbl_804D77F4
lbl_804D77E4:
/* 804D77E4  38 80 FF FF */	li r4, -1
/* 804D77E8  38 00 00 00 */	li r0, 0
/* 804D77EC  90 86 0D E4 */	stw r4, 0xde4(r6)
/* 804D77F0  90 06 0D D4 */	stw r0, 0xdd4(r6)
lbl_804D77F4:
/* 804D77F4  2C 05 00 00 */	cmpwi r5, 0
/* 804D77F8  41 80 00 3C */	blt lbl_804D7834
/* 804D77FC  7C 83 3A 14 */	add r4, r3, r7
/* 804D7800  80 04 0D EC */	lwz r0, 0xdec(r4)
/* 804D7804  7C 05 00 00 */	cmpw r5, r0
/* 804D7808  41 82 00 08 */	beq lbl_804D7810
/* 804D780C  90 A4 0D EC */	stw r5, 0xdec(r4)
lbl_804D7810:
/* 804D7810  69 00 00 01 */	xori r0, r8, 1
/* 804D7814  80 84 0D EC */	lwz r4, 0xdec(r4)
/* 804D7818  54 00 10 3A */	slwi r0, r0, 2
/* 804D781C  7C 63 02 14 */	add r3, r3, r0
/* 804D7820  80 03 0D EC */	lwz r0, 0xdec(r3)
/* 804D7824  7C 04 00 00 */	cmpw r4, r0
/* 804D7828  40 82 00 24 */	bne lbl_804D784C
/* 804D782C  39 20 00 01 */	li r9, 1
/* 804D7830  48 00 00 1C */	b lbl_804D784C
lbl_804D7834:
/* 804D7834  7C 63 3A 14 */	add r3, r3, r7
/* 804D7838  38 80 00 00 */	li r4, 0
/* 804D783C  90 83 0D CC */	stw r4, 0xdcc(r3)
/* 804D7840  38 00 FF FF */	li r0, -1
/* 804D7844  90 83 0D DC */	stw r4, 0xddc(r3)
/* 804D7848  90 03 0D EC */	stw r0, 0xdec(r3)
lbl_804D784C:
/* 804D784C  7D 23 4B 78 */	mr r3, r9
/* 804D7850  4E 80 00 20 */	blr 
