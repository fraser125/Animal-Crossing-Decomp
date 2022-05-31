lbl_8038B5AC:
/* 8038B5AC  88 83 00 02 */	lbz r4, 2(r3)
/* 8038B5B0  A0 03 00 00 */	lhz r0, 0(r3)
/* 8038B5B4  54 84 EE FE */	rlwinm r4, r4, 0x1d, 0x1b, 0x1f
/* 8038B5B8  54 00 DE FE */	rlwinm r0, r0, 0x1b, 0x1b, 0x1f
/* 8038B5BC  7C 04 00 00 */	cmpw r4, r0
/* 8038B5C0  41 82 00 0C */	beq lbl_8038B5CC
/* 8038B5C4  38 60 00 04 */	li r3, 4
/* 8038B5C8  4E 80 00 20 */	blr 
lbl_8038B5CC:
/* 8038B5CC  88 03 00 01 */	lbz r0, 1(r3)
/* 8038B5D0  A0 83 00 02 */	lhz r4, 2(r3)
/* 8038B5D4  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 8038B5D8  54 83 D6 FE */	rlwinm r3, r4, 0x1a, 0x1b, 0x1f
/* 8038B5DC  7C 63 00 50 */	subf r3, r3, r0
/* 8038B5E0  30 03 FF FF */	addic r0, r3, -1
/* 8038B5E4  7C 60 19 10 */	subfe r3, r0, r3
/* 8038B5E8  38 63 00 04 */	addi r3, r3, 4
/* 8038B5EC  4E 80 00 20 */	blr 
