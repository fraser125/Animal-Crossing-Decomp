lbl_80630C64:
/* 80630C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80630C68  7C 08 02 A6 */	mflr r0
/* 80630C6C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80630C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80630C74  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80630C78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80630C7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80630C80  83 C5 00 00 */	lwz r30, 0(r5)
/* 80630C84  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 80630C88  38 7F 00 08 */	addi r3, r31, 8
/* 80630C8C  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80630C90  90 1F 00 00 */	stw r0, 0(r31)
/* 80630C94  80 65 00 00 */	lwz r3, 0(r5)
/* 80630C98  4B DD C7 3D */	bl _Matrix_to_Mtx_new
/* 80630C9C  90 7F 00 04 */	stw r3, 4(r31)
/* 80630CA0  3C 60 80 E9 */	lis r3, int_ike_k_tanabata01_body_model@ha /* 0x80E88750@ha */
/* 80630CA4  3C 80 DE 00 */	lis r4, 0xde00
/* 80630CA8  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 80630CAC  38 03 87 50 */	addi r0, r3, int_ike_k_tanabata01_body_model@l /* 0x80E88750@l */
/* 80630CB0  38 65 00 08 */	addi r3, r5, 8
/* 80630CB4  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80630CB8  90 85 00 00 */	stw r4, 0(r5)
/* 80630CBC  90 05 00 04 */	stw r0, 4(r5)
/* 80630CC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80630CC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80630CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80630CCC  7C 08 03 A6 */	mtlr r0
/* 80630CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80630CD4  4E 80 00 20 */	blr 
