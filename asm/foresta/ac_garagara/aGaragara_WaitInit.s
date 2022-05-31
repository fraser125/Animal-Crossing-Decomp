lbl_80424E3C:
/* 80424E3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80424E40  7C 08 02 A6 */	mflr r0
/* 80424E44  7C 67 1B 78 */	mr r7, r3
/* 80424E48  3C 80 80 64 */	lis r4, lit_563@ha /* 0x80643F08@ha */
/* 80424E4C  38 64 3F 08 */	addi r3, r4, lit_563@l /* 0x80643F08@l */
/* 80424E50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80424E54  3C 80 80 87 */	lis r4, cKF_ba_r_obj_gara@ha /* 0x8086C694@ha */
/* 80424E58  3C A0 80 87 */	lis r5, cKF_bs_r_obj_gara@ha /* 0x8086C9FC@ha */
/* 80424E5C  C0 23 00 00 */	lfs f1, 0(r3)
/* 80424E60  38 65 C9 FC */	addi r3, r5, cKF_bs_r_obj_gara@l /* 0x8086C9FC@l */
/* 80424E64  38 A7 01 84 */	addi r5, r7, 0x184
/* 80424E68  38 C7 01 F4 */	addi r6, r7, 0x1f4
/* 80424E6C  38 84 C6 94 */	addi r4, r4, cKF_ba_r_obj_gara@l /* 0x8086C694@l */
/* 80424E70  38 E7 02 06 */	addi r7, r7, 0x206
/* 80424E74  4B FF FC 2D */	bl func_80424AA0
/* 80424E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80424E7C  7C 08 03 A6 */	mtlr r0
/* 80424E80  38 21 00 10 */	addi r1, r1, 0x10
/* 80424E84  4E 80 00 20 */	blr 
