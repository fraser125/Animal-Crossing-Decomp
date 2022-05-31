lbl_80424C54:
/* 80424C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80424C58  7C 08 02 A6 */	mflr r0
/* 80424C5C  3C 80 80 64 */	lis r4, lit_563@ha /* 0x80643F08@ha */
/* 80424C60  3C A0 80 87 */	lis r5, cKF_bs_r_obj_gara@ha /* 0x8086C9FC@ha */
/* 80424C64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80424C68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80424C6C  7C 7F 1B 78 */	mr r31, r3
/* 80424C70  38 64 3F 08 */	addi r3, r4, lit_563@l /* 0x80643F08@l */
/* 80424C74  3C 80 80 87 */	lis r4, cKF_ba_r_obj_gara@ha /* 0x8086C694@ha */
/* 80424C78  C0 23 00 00 */	lfs f1, 0(r3)
/* 80424C7C  38 65 C9 FC */	addi r3, r5, cKF_bs_r_obj_gara@l /* 0x8086C9FC@l */
/* 80424C80  38 BF 01 84 */	addi r5, r31, 0x184
/* 80424C84  38 84 C6 94 */	addi r4, r4, cKF_ba_r_obj_gara@l /* 0x8086C694@l */
/* 80424C88  38 DF 01 F4 */	addi r6, r31, 0x1f4
/* 80424C8C  38 FF 02 06 */	addi r7, r31, 0x206
/* 80424C90  4B FF FE 11 */	bl func_80424AA0
/* 80424C94  3C 80 80 42 */	lis r4, Garagara_Actor_move@ha /* 0x80424FAC@ha */
/* 80424C98  3C 60 80 42 */	lis r3, Garagara_Actor_draw@ha /* 0x80424D70@ha */
/* 80424C9C  38 04 4F AC */	addi r0, r4, Garagara_Actor_move@l /* 0x80424FAC@l */
/* 80424CA0  90 1F 01 64 */	stw r0, 0x164(r31)
/* 80424CA4  38 03 4D 70 */	addi r0, r3, Garagara_Actor_draw@l /* 0x80424D70@l */
/* 80424CA8  90 1F 01 68 */	stw r0, 0x168(r31)
/* 80424CAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80424CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80424CB4  7C 08 03 A6 */	mtlr r0
/* 80424CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80424CBC  4E 80 00 20 */	blr 
