lbl_805D9420:
/* 805D9420  94 21 FC 10 */	stwu r1, -0x3f0(r1)
/* 805D9424  7C 08 02 A6 */	mflr r0
/* 805D9428  90 01 03 F4 */	stw r0, 0x3f4(r1)
/* 805D942C  38 A1 00 08 */	addi r5, r1, 8
/* 805D9430  4B FF FE 95 */	bl mED_input_multi_line_R
/* 805D9434  80 01 03 F4 */	lwz r0, 0x3f4(r1)
/* 805D9438  7C 08 03 A6 */	mtlr r0
/* 805D943C  38 21 03 F0 */	addi r1, r1, 0x3f0
/* 805D9440  4E 80 00 20 */	blr 
