lbl_8063CB30:
/* 8063CB30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063CB34  7C 08 02 A6 */	mflr r0
/* 8063CB38  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063CB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063CB40  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063CB44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063CB48  93 C1 00 08 */	stw r30, 8(r1)
/* 8063CB4C  83 C5 00 00 */	lwz r30, 0(r5)
/* 8063CB50  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 8063CB54  38 7F 00 08 */	addi r3, r31, 8
/* 8063CB58  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063CB5C  90 1F 00 00 */	stw r0, 0(r31)
/* 8063CB60  80 65 00 00 */	lwz r3, 0(r5)
/* 8063CB64  4B DD 08 71 */	bl _Matrix_to_Mtx_new
/* 8063CB68  90 7F 00 04 */	stw r3, 4(r31)
/* 8063CB6C  3C A0 81 0E */	lis r5, int_tak_megami_on_model@ha /* 0x810E6550@ha */
/* 8063CB70  3C 80 81 0E */	lis r4, int_tak_megami_onT_model@ha /* 0x810E6708@ha */
/* 8063CB74  3C 60 81 0E */	lis r3, int_tak_megami_offT_model@ha /* 0x810E66A0@ha */
/* 8063CB78  81 1E 02 D0 */	lwz r8, 0x2d0(r30)
/* 8063CB7C  3C C0 DE 00 */	lis r6, 0xde00
/* 8063CB80  38 A5 65 50 */	addi r5, r5, int_tak_megami_on_model@l /* 0x810E6550@l */
/* 8063CB84  38 84 67 08 */	addi r4, r4, int_tak_megami_onT_model@l /* 0x810E6708@l */
/* 8063CB88  38 E8 00 08 */	addi r7, r8, 8
/* 8063CB8C  38 03 66 A0 */	addi r0, r3, int_tak_megami_offT_model@l /* 0x810E66A0@l */
/* 8063CB90  90 FE 02 D0 */	stw r7, 0x2d0(r30)
/* 8063CB94  90 C8 00 00 */	stw r6, 0(r8)
/* 8063CB98  90 A8 00 04 */	stw r5, 4(r8)
/* 8063CB9C  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 8063CBA0  38 65 00 08 */	addi r3, r5, 8
/* 8063CBA4  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063CBA8  90 C5 00 00 */	stw r6, 0(r5)
/* 8063CBAC  90 85 00 04 */	stw r4, 4(r5)
/* 8063CBB0  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 8063CBB4  38 64 00 08 */	addi r3, r4, 8
/* 8063CBB8  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063CBBC  90 C4 00 00 */	stw r6, 0(r4)
/* 8063CBC0  90 04 00 04 */	stw r0, 4(r4)
/* 8063CBC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063CBC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063CBCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063CBD0  7C 08 03 A6 */	mtlr r0
/* 8063CBD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8063CBD8  4E 80 00 20 */	blr 
