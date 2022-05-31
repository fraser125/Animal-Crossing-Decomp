lbl_803BB878:
/* 803BB878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BB87C  7C 08 02 A6 */	mflr r0
/* 803BB880  7C EB 3B 78 */	mr r11, r7
/* 803BB884  7D 47 53 78 */	mr r7, r10
/* 803BB888  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BB88C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 803BB890  98 03 00 00 */	stb r0, 0(r3)
/* 803BB894  B0 83 00 02 */	sth r4, 2(r3)
/* 803BB898  7D 64 5B 78 */	mr r4, r11
/* 803BB89C  B0 A3 00 04 */	sth r5, 4(r3)
/* 803BB8A0  7D 05 43 78 */	mr r5, r8
/* 803BB8A4  B0 C3 00 06 */	sth r6, 6(r3)
/* 803BB8A8  7D 26 4B 78 */	mr r6, r9
/* 803BB8AC  48 00 00 3D */	bl Light_point_color_set
/* 803BB8B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BB8B4  7C 08 03 A6 */	mtlr r0
/* 803BB8B8  38 21 00 10 */	addi r1, r1, 0x10
/* 803BB8BC  4E 80 00 20 */	blr 
