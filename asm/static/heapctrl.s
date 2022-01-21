.include "macros.inc"

.section .text

.org 0x800328A0

.global Jac_InitHeap__FP7jaheap_
Jac_InitHeap__FP7jaheap_:
/* 800328A0 0002F800  38 A0 00 00 */	li r5, 0
/* 800328A4 0002F804  90 A3 00 08 */	stw r5, 8(r3)
/* 800328A8 0002F808  90 A3 00 0C */	stw r5, 0xc(r3)
/* 800328AC 0002F80C  90 A3 00 10 */	stw r5, 0x10(r3)
/* 800328B0 0002F810  80 8D 8A 08 */	lwz r4, global_id-_SDA_BASE_(r13)
/* 800328B4 0002F814  38 04 00 01 */	addi r0, r4, 1
/* 800328B8 0002F818  90 0D 8A 08 */	stw r0, global_id-_SDA_BASE_(r13)
/* 800328BC 0002F81C  90 83 00 04 */	stw r4, 4(r3)
/* 800328C0 0002F820  98 A3 00 00 */	stb r5, 0(r3)
/* 800328C4 0002F824  B0 A3 00 02 */	sth r5, 2(r3)
/* 800328C8 0002F828  90 A3 00 14 */	stw r5, 0x14(r3)
/* 800328CC 0002F82C  90 A3 00 18 */	stw r5, 0x18(r3)
/* 800328D0 0002F830  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 800328D4 0002F834  90 A3 00 20 */	stw r5, 0x20(r3)
/* 800328D8 0002F838  90 A3 00 24 */	stw r5, 0x24(r3)
/* 800328DC 0002F83C  90 A3 00 28 */	stw r5, 0x28(r3)
/* 800328E0 0002F840  4E 80 00 20 */	blr 
/* 800328E4 0002F844  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800328E8 0002F848  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800328EC 0002F84C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800328F0 0002F850  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800328F4 0002F854  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800328F8 0002F858  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800328FC 0002F85C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_SelfInitHeap__FP7jaheap_UlUlUl
Jac_SelfInitHeap__FP7jaheap_UlUlUl:
/* 80032900 0002F860  90 83 00 08 */	stw r4, 8(r3)
/* 80032904 0002F864  38 00 00 00 */	li r0, 0
/* 80032908 0002F868  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8003290C 0002F86C  90 03 00 0C */	stw r0, 0xc(r3)
/* 80032910 0002F870  98 03 00 00 */	stb r0, 0(r3)
/* 80032914 0002F874  98 C3 00 01 */	stb r6, 1(r3)
/* 80032918 0002F878  B0 03 00 02 */	sth r0, 2(r3)
/* 8003291C 0002F87C  90 03 00 14 */	stw r0, 0x14(r3)
/* 80032920 0002F880  90 03 00 18 */	stw r0, 0x18(r3)
/* 80032924 0002F884  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80032928 0002F888  90 03 00 20 */	stw r0, 0x20(r3)
/* 8003292C 0002F88C  90 03 00 24 */	stw r0, 0x24(r3)
/* 80032930 0002F890  90 03 00 28 */	stw r0, 0x28(r3)
/* 80032934 0002F894  4E 80 00 20 */	blr 
/* 80032938 0002F898  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003293C 0002F89C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_SelfAllocHeap__FP7jaheap_P7jaheap_UlUl
Jac_SelfAllocHeap__FP7jaheap_P7jaheap_UlUl:
/* 80032940 0002F8A0  80 E3 00 08 */	lwz r7, 8(r3)
/* 80032944 0002F8A4  28 07 00 00 */	cmplwi r7, 0
/* 80032948 0002F8A8  41 82 00 18 */	beq lbl_80032960
/* 8003294C 0002F8AC  3C 07 00 01 */	addis r0, r7, 1
/* 80032950 0002F8B0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80032954 0002F8B4  41 82 00 0C */	beq lbl_80032960
/* 80032958 0002F8B8  38 60 00 00 */	li r3, 0
/* 8003295C 0002F8BC  4E 80 00 20 */	blr 
lbl_80032960:
/* 80032960 0002F8C0  90 C3 00 08 */	stw r6, 8(r3)
/* 80032964 0002F8C4  38 C0 00 00 */	li r6, 0
/* 80032968 0002F8C8  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8003296C 0002F8CC  90 C3 00 0C */	stw r6, 0xc(r3)
/* 80032970 0002F8D0  98 C3 00 00 */	stb r6, 0(r3)
/* 80032974 0002F8D4  88 04 00 01 */	lbz r0, 1(r4)
/* 80032978 0002F8D8  98 03 00 01 */	stb r0, 1(r3)
/* 8003297C 0002F8DC  B0 C3 00 02 */	sth r6, 2(r3)
/* 80032980 0002F8E0  90 C3 00 14 */	stw r6, 0x14(r3)
/* 80032984 0002F8E4  90 83 00 18 */	stw r4, 0x18(r3)
/* 80032988 0002F8E8  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 8003298C 0002F8EC  28 05 00 00 */	cmplwi r5, 0
/* 80032990 0002F8F0  40 82 00 28 */	bne lbl_800329B8
/* 80032994 0002F8F4  90 64 00 14 */	stw r3, 0x14(r4)
/* 80032998 0002F8F8  90 C3 00 1C */	stw r6, 0x1c(r3)
/* 8003299C 0002F8FC  80 A4 00 08 */	lwz r5, 8(r4)
/* 800329A0 0002F900  80 03 00 08 */	lwz r0, 8(r3)
/* 800329A4 0002F904  80 63 00 10 */	lwz r3, 0x10(r3)
/* 800329A8 0002F908  7C 05 00 50 */	subf r0, r5, r0
/* 800329AC 0002F90C  7C 03 02 14 */	add r0, r3, r0
/* 800329B0 0002F910  90 04 00 0C */	stw r0, 0xc(r4)
/* 800329B4 0002F914  48 00 00 7C */	b lbl_80032A30
lbl_800329B8:
/* 800329B8 0002F918  80 C3 00 08 */	lwz r6, 8(r3)
/* 800329BC 0002F91C  7C A7 2B 78 */	mr r7, r5
/* 800329C0 0002F920  80 05 00 08 */	lwz r0, 8(r5)
/* 800329C4 0002F924  7C 06 00 40 */	cmplw r6, r0
/* 800329C8 0002F928  40 80 00 10 */	bge lbl_800329D8
/* 800329CC 0002F92C  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 800329D0 0002F930  90 64 00 14 */	stw r3, 0x14(r4)
/* 800329D4 0002F934  48 00 00 5C */	b lbl_80032A30
lbl_800329D8:
/* 800329D8 0002F938  80 A7 00 1C */	lwz r5, 0x1c(r7)
/* 800329DC 0002F93C  28 05 00 00 */	cmplwi r5, 0
/* 800329E0 0002F940  40 82 00 30 */	bne lbl_80032A10
/* 800329E4 0002F944  38 00 00 00 */	li r0, 0
/* 800329E8 0002F948  90 03 00 1C */	stw r0, 0x1c(r3)
/* 800329EC 0002F94C  90 67 00 1C */	stw r3, 0x1c(r7)
/* 800329F0 0002F950  80 A4 00 08 */	lwz r5, 8(r4)
/* 800329F4 0002F954  80 03 00 08 */	lwz r0, 8(r3)
/* 800329F8 0002F958  80 63 00 10 */	lwz r3, 0x10(r3)
/* 800329FC 0002F95C  7C 05 00 50 */	subf r0, r5, r0
/* 80032A00 0002F960  7C 03 02 14 */	add r0, r3, r0
/* 80032A04 0002F964  90 04 00 0C */	stw r0, 0xc(r4)
/* 80032A08 0002F968  48 00 00 28 */	b lbl_80032A30
/* 80032A0C 0002F96C  60 00 00 00 */	nop 
lbl_80032A10:
/* 80032A10 0002F970  80 05 00 08 */	lwz r0, 8(r5)
/* 80032A14 0002F974  7C 06 00 40 */	cmplw r6, r0
/* 80032A18 0002F978  40 80 00 10 */	bge lbl_80032A28
/* 80032A1C 0002F97C  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 80032A20 0002F980  90 67 00 1C */	stw r3, 0x1c(r7)
/* 80032A24 0002F984  48 00 00 0C */	b lbl_80032A30
lbl_80032A28:
/* 80032A28 0002F988  7C A7 2B 78 */	mr r7, r5
/* 80032A2C 0002F98C  4B FF FF AC */	b lbl_800329D8
lbl_80032A30:
/* 80032A30 0002F990  A0 A4 00 02 */	lhz r5, 2(r4)
/* 80032A34 0002F994  38 60 00 01 */	li r3, 1
/* 80032A38 0002F998  38 05 00 01 */	addi r0, r5, 1
/* 80032A3C 0002F99C  B0 04 00 02 */	sth r0, 2(r4)
/* 80032A40 0002F9A0  4E 80 00 20 */	blr 
/* 80032A44 0002F9A4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032A48 0002F9A8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032A4C 0002F9AC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032A50 0002F9B0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032A54 0002F9B4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032A58 0002F9B8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032A5C 0002F9BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_SetGroupHeap__FP7jaheap_P7jaheap_
Jac_SetGroupHeap__FP7jaheap_P7jaheap_:
/* 80032A60 0002F9C0  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80032A64 0002F9C4  28 00 00 00 */	cmplwi r0, 0
/* 80032A68 0002F9C8  40 82 00 10 */	bne lbl_80032A78
/* 80032A6C 0002F9CC  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80032A70 0002F9D0  28 00 00 00 */	cmplwi r0, 0
/* 80032A74 0002F9D4  41 82 00 0C */	beq lbl_80032A80
lbl_80032A78:
/* 80032A78 0002F9D8  38 60 00 00 */	li r3, 0
/* 80032A7C 0002F9DC  4E 80 00 20 */	blr 
lbl_80032A80:
/* 80032A80 0002F9E0  90 83 00 20 */	stw r4, 0x20(r3)
/* 80032A84 0002F9E4  80 04 00 24 */	lwz r0, 0x24(r4)
/* 80032A88 0002F9E8  90 03 00 28 */	stw r0, 0x28(r3)
/* 80032A8C 0002F9EC  90 64 00 24 */	stw r3, 0x24(r4)
/* 80032A90 0002F9F0  38 60 00 01 */	li r3, 1
/* 80032A94 0002F9F4  4E 80 00 20 */	blr 
/* 80032A98 0002F9F8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032A9C 0002F9FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_InitMotherHeap__FP7jaheap_UlUlUc
Jac_InitMotherHeap__FP7jaheap_UlUlUc:
/* 80032AA0 0002FA00  38 E4 00 1F */	addi r7, r4, 0x1f
/* 80032AA4 0002FA04  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80032AA8 0002FA08  54 E4 00 34 */	rlwinm r4, r7, 0, 0, 0x1a
/* 80032AAC 0002FA0C  38 E0 00 00 */	li r7, 0
/* 80032AB0 0002FA10  90 83 00 08 */	stw r4, 8(r3)
/* 80032AB4 0002FA14  7C 80 28 50 */	subf r4, r0, r5
/* 80032AB8 0002FA18  38 00 00 01 */	li r0, 1
/* 80032ABC 0002FA1C  90 E3 00 0C */	stw r7, 0xc(r3)
/* 80032AC0 0002FA20  90 83 00 10 */	stw r4, 0x10(r3)
/* 80032AC4 0002FA24  80 AD 8A 08 */	lwz r5, global_id-_SDA_BASE_(r13)
/* 80032AC8 0002FA28  38 85 00 01 */	addi r4, r5, 1
/* 80032ACC 0002FA2C  90 8D 8A 08 */	stw r4, global_id-_SDA_BASE_(r13)
/* 80032AD0 0002FA30  90 A3 00 04 */	stw r5, 4(r3)
/* 80032AD4 0002FA34  98 03 00 00 */	stb r0, 0(r3)
/* 80032AD8 0002FA38  98 C3 00 01 */	stb r6, 1(r3)
/* 80032ADC 0002FA3C  B0 E3 00 02 */	sth r7, 2(r3)
/* 80032AE0 0002FA40  90 E3 00 14 */	stw r7, 0x14(r3)
/* 80032AE4 0002FA44  90 E3 00 18 */	stw r7, 0x18(r3)
/* 80032AE8 0002FA48  90 E3 00 1C */	stw r7, 0x1c(r3)
/* 80032AEC 0002FA4C  90 E3 00 20 */	stw r7, 0x20(r3)
/* 80032AF0 0002FA50  90 E3 00 24 */	stw r7, 0x24(r3)
/* 80032AF4 0002FA54  90 E3 00 28 */	stw r7, 0x28(r3)
/* 80032AF8 0002FA58  4E 80 00 20 */	blr 
/* 80032AFC 0002FA5C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_AllocHeap__FP7jaheap_P7jaheap_Ul
Jac_AllocHeap__FP7jaheap_P7jaheap_Ul:
/* 80032B00 0002FA60  80 C4 00 08 */	lwz r6, 8(r4)
/* 80032B04 0002FA64  38 05 00 1F */	addi r0, r5, 0x1f
/* 80032B08 0002FA68  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 80032B0C 0002FA6C  28 06 00 00 */	cmplwi r6, 0
/* 80032B10 0002FA70  40 82 00 0C */	bne lbl_80032B1C
/* 80032B14 0002FA74  38 60 00 00 */	li r3, 0
/* 80032B18 0002FA78  4E 80 00 20 */	blr 
lbl_80032B1C:
/* 80032B1C 0002FA7C  80 A3 00 08 */	lwz r5, 8(r3)
/* 80032B20 0002FA80  28 05 00 00 */	cmplwi r5, 0
/* 80032B24 0002FA84  41 82 00 18 */	beq lbl_80032B3C
/* 80032B28 0002FA88  3C A5 00 01 */	addis r5, r5, 1
/* 80032B2C 0002FA8C  28 05 FF FF */	cmplwi r5, 0xffff
/* 80032B30 0002FA90  41 82 00 0C */	beq lbl_80032B3C
/* 80032B34 0002FA94  38 60 00 00 */	li r3, 0
/* 80032B38 0002FA98  4E 80 00 20 */	blr 
lbl_80032B3C:
/* 80032B3C 0002FA9C  80 E4 00 0C */	lwz r7, 0xc(r4)
/* 80032B40 0002FAA0  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 80032B44 0002FAA4  7C A7 28 50 */	subf r5, r7, r5
/* 80032B48 0002FAA8  7C 05 00 40 */	cmplw r5, r0
/* 80032B4C 0002FAAC  40 80 00 E0 */	bge lbl_80032C2C
/* 80032B50 0002FAB0  80 E4 00 14 */	lwz r7, 0x14(r4)
/* 80032B54 0002FAB4  3C A0 10 00 */	lis r5, 0x0FFFFFFF@ha
/* 80032B58 0002FAB8  7C C8 33 78 */	mr r8, r6
/* 80032B5C 0002FABC  39 40 00 00 */	li r10, 0
/* 80032B60 0002FAC0  7C E9 3B 78 */	mr r9, r7
/* 80032B64 0002FAC4  39 85 FF FF */	addi r12, r5, 0x0FFFFFFF@l
lbl_80032B68:
/* 80032B68 0002FAC8  28 09 00 00 */	cmplwi r9, 0
/* 80032B6C 0002FACC  41 82 00 3C */	beq lbl_80032BA8
/* 80032B70 0002FAD0  80 C9 00 08 */	lwz r6, 8(r9)
/* 80032B74 0002FAD4  7C A8 30 50 */	subf r5, r8, r6
/* 80032B78 0002FAD8  7C 05 00 40 */	cmplw r5, r0
/* 80032B7C 0002FADC  41 80 00 1C */	blt lbl_80032B98
/* 80032B80 0002FAE0  7C A0 28 50 */	subf r5, r0, r5
/* 80032B84 0002FAE4  7C 05 60 40 */	cmplw r5, r12
/* 80032B88 0002FAE8  40 80 00 10 */	bge lbl_80032B98
/* 80032B8C 0002FAEC  7D 2A 4B 78 */	mr r10, r9
/* 80032B90 0002FAF0  7D 0B 43 78 */	mr r11, r8
/* 80032B94 0002FAF4  7C AC 2B 78 */	mr r12, r5
lbl_80032B98:
/* 80032B98 0002FAF8  80 A9 00 10 */	lwz r5, 0x10(r9)
/* 80032B9C 0002FAFC  81 29 00 1C */	lwz r9, 0x1c(r9)
/* 80032BA0 0002FB00  7D 06 2A 14 */	add r8, r6, r5
/* 80032BA4 0002FB04  4B FF FF C4 */	b lbl_80032B68
lbl_80032BA8:
/* 80032BA8 0002FB08  28 0A 00 00 */	cmplwi r10, 0
/* 80032BAC 0002FB0C  40 82 00 0C */	bne lbl_80032BB8
/* 80032BB0 0002FB10  38 60 00 00 */	li r3, 0
/* 80032BB4 0002FB14  4E 80 00 20 */	blr 
lbl_80032BB8:
/* 80032BB8 0002FB18  7C 0A 38 40 */	cmplw r10, r7
/* 80032BBC 0002FB1C  40 82 00 10 */	bne lbl_80032BCC
/* 80032BC0 0002FB20  90 E3 00 1C */	stw r7, 0x1c(r3)
/* 80032BC4 0002FB24  90 64 00 14 */	stw r3, 0x14(r4)
/* 80032BC8 0002FB28  48 00 00 28 */	b lbl_80032BF0
lbl_80032BCC:
/* 80032BCC 0002FB2C  7C E6 3B 78 */	mr r6, r7
lbl_80032BD0:
/* 80032BD0 0002FB30  80 A6 00 1C */	lwz r5, 0x1c(r6)
/* 80032BD4 0002FB34  7C 05 50 40 */	cmplw r5, r10
/* 80032BD8 0002FB38  40 82 00 10 */	bne lbl_80032BE8
/* 80032BDC 0002FB3C  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 80032BE0 0002FB40  90 66 00 1C */	stw r3, 0x1c(r6)
/* 80032BE4 0002FB44  48 00 00 0C */	b lbl_80032BF0
lbl_80032BE8:
/* 80032BE8 0002FB48  7C A6 2B 78 */	mr r6, r5
/* 80032BEC 0002FB4C  4B FF FF E4 */	b lbl_80032BD0
lbl_80032BF0:
/* 80032BF0 0002FB50  91 63 00 08 */	stw r11, 8(r3)
/* 80032BF4 0002FB54  38 A0 00 00 */	li r5, 0
/* 80032BF8 0002FB58  90 03 00 10 */	stw r0, 0x10(r3)
/* 80032BFC 0002FB5C  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80032C00 0002FB60  98 A3 00 00 */	stb r5, 0(r3)
/* 80032C04 0002FB64  88 04 00 01 */	lbz r0, 1(r4)
/* 80032C08 0002FB68  98 03 00 01 */	stb r0, 1(r3)
/* 80032C0C 0002FB6C  B0 A3 00 02 */	sth r5, 2(r3)
/* 80032C10 0002FB70  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80032C14 0002FB74  90 83 00 18 */	stw r4, 0x18(r3)
/* 80032C18 0002FB78  38 60 00 01 */	li r3, 1
/* 80032C1C 0002FB7C  A0 A4 00 02 */	lhz r5, 2(r4)
/* 80032C20 0002FB80  38 05 00 01 */	addi r0, r5, 1
/* 80032C24 0002FB84  B0 04 00 02 */	sth r0, 2(r4)
/* 80032C28 0002FB88  4E 80 00 20 */	blr 
lbl_80032C2C:
/* 80032C2C 0002FB8C  7C A6 3A 14 */	add r5, r6, r7
/* 80032C30 0002FB90  38 C0 00 00 */	li r6, 0
/* 80032C34 0002FB94  90 A3 00 08 */	stw r5, 8(r3)
/* 80032C38 0002FB98  90 03 00 10 */	stw r0, 0x10(r3)
/* 80032C3C 0002FB9C  90 C3 00 0C */	stw r6, 0xc(r3)
/* 80032C40 0002FBA0  98 C3 00 00 */	stb r6, 0(r3)
/* 80032C44 0002FBA4  88 A4 00 01 */	lbz r5, 1(r4)
/* 80032C48 0002FBA8  98 A3 00 01 */	stb r5, 1(r3)
/* 80032C4C 0002FBAC  B0 C3 00 02 */	sth r6, 2(r3)
/* 80032C50 0002FBB0  90 C3 00 14 */	stw r6, 0x14(r3)
/* 80032C54 0002FBB4  90 83 00 18 */	stw r4, 0x18(r3)
/* 80032C58 0002FBB8  80 E4 00 14 */	lwz r7, 0x14(r4)
/* 80032C5C 0002FBBC  28 07 00 00 */	cmplwi r7, 0
/* 80032C60 0002FBC0  40 82 00 10 */	bne lbl_80032C70
/* 80032C64 0002FBC4  90 64 00 14 */	stw r3, 0x14(r4)
/* 80032C68 0002FBC8  90 C3 00 1C */	stw r6, 0x1c(r3)
/* 80032C6C 0002FBCC  48 00 00 24 */	b lbl_80032C90
lbl_80032C70:
/* 80032C70 0002FBD0  80 A7 00 1C */	lwz r5, 0x1c(r7)
/* 80032C74 0002FBD4  28 05 00 00 */	cmplwi r5, 0
/* 80032C78 0002FBD8  40 82 00 10 */	bne lbl_80032C88
/* 80032C7C 0002FBDC  90 67 00 1C */	stw r3, 0x1c(r7)
/* 80032C80 0002FBE0  48 00 00 10 */	b lbl_80032C90
/* 80032C84 0002FBE4  60 00 00 00 */	nop 
lbl_80032C88:
/* 80032C88 0002FBE8  7C A7 2B 78 */	mr r7, r5
/* 80032C8C 0002FBEC  4B FF FF E4 */	b lbl_80032C70
lbl_80032C90:
/* 80032C90 0002FBF0  38 A0 00 00 */	li r5, 0
/* 80032C94 0002FBF4  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 80032C98 0002FBF8  38 60 00 01 */	li r3, 1
/* 80032C9C 0002FBFC  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 80032CA0 0002FC00  7C 05 02 14 */	add r0, r5, r0
/* 80032CA4 0002FC04  90 04 00 0C */	stw r0, 0xc(r4)
/* 80032CA8 0002FC08  A0 A4 00 02 */	lhz r5, 2(r4)
/* 80032CAC 0002FC0C  38 05 00 01 */	addi r0, r5, 1
/* 80032CB0 0002FC10  B0 04 00 02 */	sth r0, 2(r4)
/* 80032CB4 0002FC14  4E 80 00 20 */	blr 
/* 80032CB8 0002FC18  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032CBC 0002FC1C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */