lbl_80631BFC:
/* 80631BFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80631C00  7C 08 02 A6 */	mflr r0
/* 80631C04  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80631C08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80631C0C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80631C10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80631C14  93 C1 00 08 */	stw r30, 8(r1)
/* 80631C18  83 E5 00 00 */	lwz r31, 0(r5)
/* 80631C1C  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 80631C20  38 7E 00 08 */	addi r3, r30, 8
/* 80631C24  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80631C28  90 1E 00 00 */	stw r0, 0(r30)
/* 80631C2C  80 65 00 00 */	lwz r3, 0(r5)
/* 80631C30  4B DD B7 A5 */	bl _Matrix_to_Mtx_new
/* 80631C34  90 7E 00 04 */	stw r3, 4(r30)
/* 80631C38  3C E0 80 F0 */	lis r7, int_kon_musya_hako_on_model@ha /* 0x80EF9B40@ha */
/* 80631C3C  3C C0 80 F0 */	lis r6, int_kon_musya_atama_on_model@ha /* 0x80EF9BA8@ha */
/* 80631C40  3C A0 80 F0 */	lis r5, int_kon_musya_tare_onT_model@ha /* 0x80EF9C08@ha */
/* 80631C44  81 3F 02 D0 */	lwz r9, 0x2d0(r31)
/* 80631C48  3C 80 80 F0 */	lis r4, int_kon_musya_dou_onT_model@ha /* 0x80EF9CA0@ha */
/* 80631C4C  3C 60 80 F0 */	lis r3, int_kon_musya_atama_onT_model@ha /* 0x80EF9D30@ha */
/* 80631C50  3D 00 DE 00 */	lis r8, 0xde00
/* 80631C54  38 09 00 08 */	addi r0, r9, 8
/* 80631C58  38 E7 9B 40 */	addi r7, r7, int_kon_musya_hako_on_model@l /* 0x80EF9B40@l */
/* 80631C5C  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 80631C60  38 C6 9B A8 */	addi r6, r6, int_kon_musya_atama_on_model@l /* 0x80EF9BA8@l */
/* 80631C64  38 A5 9C 08 */	addi r5, r5, int_kon_musya_tare_onT_model@l /* 0x80EF9C08@l */
/* 80631C68  38 84 9C A0 */	addi r4, r4, int_kon_musya_dou_onT_model@l /* 0x80EF9CA0@l */
/* 80631C6C  91 09 00 00 */	stw r8, 0(r9)
/* 80631C70  38 03 9D 30 */	addi r0, r3, int_kon_musya_atama_onT_model@l /* 0x80EF9D30@l */
/* 80631C74  90 E9 00 04 */	stw r7, 4(r9)
/* 80631C78  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 80631C7C  38 67 00 08 */	addi r3, r7, 8
/* 80631C80  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80631C84  91 07 00 00 */	stw r8, 0(r7)
/* 80631C88  90 C7 00 04 */	stw r6, 4(r7)
/* 80631C8C  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 80631C90  38 66 00 08 */	addi r3, r6, 8
/* 80631C94  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80631C98  91 06 00 00 */	stw r8, 0(r6)
/* 80631C9C  90 A6 00 04 */	stw r5, 4(r6)
/* 80631CA0  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 80631CA4  38 65 00 08 */	addi r3, r5, 8
/* 80631CA8  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80631CAC  91 05 00 00 */	stw r8, 0(r5)
/* 80631CB0  90 85 00 04 */	stw r4, 4(r5)
/* 80631CB4  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 80631CB8  38 64 00 08 */	addi r3, r4, 8
/* 80631CBC  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80631CC0  91 04 00 00 */	stw r8, 0(r4)
/* 80631CC4  90 04 00 04 */	stw r0, 4(r4)
/* 80631CC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80631CCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80631CD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80631CD4  7C 08 03 A6 */	mtlr r0
/* 80631CD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80631CDC  4E 80 00 20 */	blr 
