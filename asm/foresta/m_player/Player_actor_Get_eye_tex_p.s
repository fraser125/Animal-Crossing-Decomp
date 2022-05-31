lbl_804D54F4:
/* 804D54F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D54F8  7C 08 02 A6 */	mflr r0
/* 804D54FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5500  80 63 0C F0 */	lwz r3, 0xcf0(r3)
/* 804D5504  4B F0 4B 91 */	bl mPlib_Get_eye_tex_p
/* 804D5508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D550C  7C 08 03 A6 */	mtlr r0
/* 804D5510  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5514  4E 80 00 20 */	blr 
