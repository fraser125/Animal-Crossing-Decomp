.include "macros.inc"

.section .text

.org 0x80018920

.global GetNeos_FileTop__Fv
GetNeos_FileTop__Fv:
/* 80018920 00015880  80 6D 88 B4 */	lwz r3, init_cut_flag-_SDA_BASE_(r13)
/* 80018924 00015884  80 0D 88 AC */	lwz r0, init_load_size-_SDA_BASE_(r13)
/* 80018928 00015888  20 63 00 00 */	subfic r3, r3, 0
/* 8001892C 0001588C  7C 63 19 10 */	subfe r3, r3, r3
/* 80018930 00015890  7C 03 18 78 */	andc r3, r0, r3
/* 80018934 00015894  4E 80 00 20 */	blr 
/* 80018938 00015898  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8001893C 0001589C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global GetNeosRomTop__Fv
GetNeosRomTop__Fv:
/* 80018940 000158A0  80 6D 88 A4 */	lwz r3, AUDIO_ARAM_TOP-_SDA_BASE_(r13)
/* 80018944 000158A4  4E 80 00 20 */	blr 
/* 80018948 000158A8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8001894C 000158AC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018950 000158B0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018954 000158B4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018958 000158B8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8001895C 000158BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global GetNeosRom_PreLoaded__Fv
GetNeosRom_PreLoaded__Fv:
/* 80018960 000158C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018964 000158C4  7C 08 02 A6 */	mflr r0
/* 80018968 000158C8  38 60 00 00 */	li r3, 0
/* 8001896C 000158CC  38 E0 00 00 */	li r7, 0
/* 80018970 000158D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018974 000158D4  39 00 00 00 */	li r8, 0
/* 80018978 000158D8  80 8D 88 B0 */	lwz r4, init_load_addr-_SDA_BASE_(r13)
/* 8001897C 000158DC  80 AD 88 A4 */	lwz r5, AUDIO_ARAM_TOP-_SDA_BASE_(r13)
/* 80018980 000158E0  80 CD 88 AC */	lwz r6, init_load_size-_SDA_BASE_(r13)
/* 80018984 000158E4  48 00 21 1D */	bl DVDT_DRAMtoARAM__FUlUlUlUlPUlPFUl_v
/* 80018988 000158E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001898C 000158EC  80 6D 88 AC */	lwz r3, init_load_size-_SDA_BASE_(r13)
/* 80018990 000158F0  7C 08 03 A6 */	mtlr r0
/* 80018994 000158F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80018998 000158F8  4E 80 00 20 */	blr 
/* 8001899C 000158FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global SetPreCopy_NeosRom__FPUcUli
SetPreCopy_NeosRom__FPUcUli:
/* 800189A0 00015900  90 8D 88 AC */	stw r4, init_load_size-_SDA_BASE_(r13)
/* 800189A4 00015904  90 6D 88 B0 */	stw r3, init_load_addr-_SDA_BASE_(r13)
/* 800189A8 00015908  90 AD 88 B4 */	stw r5, init_cut_flag-_SDA_BASE_(r13)
/* 800189AC 0001590C  4E 80 00 20 */	blr 
/* 800189B0 00015910  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800189B4 00015914  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800189B8 00015918  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800189BC 0001591C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global mesg_finishcall__FUl
mesg_finishcall__FUl:
/* 800189C0 00015920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800189C4 00015924  7C 08 02 A6 */	mflr r0
/* 800189C8 00015928  38 80 00 00 */	li r4, 0
/* 800189CC 0001592C  38 A0 00 00 */	li r5, 0
/* 800189D0 00015930  90 01 00 14 */	stw r0, 0x14(r1)
/* 800189D4 00015934  48 00 D7 CD */	bl Z_osSendMesg__FP13OSMesgQueue_sPvl
/* 800189D8 00015938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800189DC 0001593C  7C 08 03 A6 */	mtlr r0
/* 800189E0 00015940  38 21 00 10 */	addi r1, r1, 0x10
/* 800189E4 00015944  4E 80 00 20 */	blr 
/* 800189E8 00015948  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800189EC 0001594C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800189F0 00015950  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800189F4 00015954  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800189F8 00015958  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800189FC 0001595C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global ARAMStartDMAmesg__FUlUlUlUllP13OSMesgQueue_s
ARAMStartDMAmesg__FUlUlUlUllP13OSMesgQueue_s:
/* 80018A00 00015960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018A04 00015964  7C 08 02 A6 */	mflr r0
/* 80018A08 00015968  28 03 00 01 */	cmplwi r3, 1
/* 80018A0C 0001596C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018A10 00015970  80 0D 88 A4 */	lwz r0, AUDIO_ARAM_TOP-_SDA_BASE_(r13)
/* 80018A14 00015974  7C A5 02 14 */	add r5, r5, r0
/* 80018A18 00015978  40 82 00 1C */	bne lbl_80018A34
/* 80018A1C 0001597C  3C E0 80 02 */	lis r7, mesg_finishcall__FUl@ha
/* 80018A20 00015980  7D 03 43 78 */	mr r3, r8
/* 80018A24 00015984  39 07 89 C0 */	addi r8, r7, mesg_finishcall__FUl@l
/* 80018A28 00015988  38 E0 00 00 */	li r7, 0
/* 80018A2C 0001598C  48 00 20 15 */	bl DVDT_ARAMtoDRAM__FUlUlUlUlPUlPFUl_v
/* 80018A30 00015990  48 00 00 18 */	b lbl_80018A48
lbl_80018A34:
/* 80018A34 00015994  3C E0 80 02 */	lis r7, mesg_finishcall__FUl@ha
/* 80018A38 00015998  7D 03 43 78 */	mr r3, r8
/* 80018A3C 0001599C  39 07 89 C0 */	addi r8, r7, mesg_finishcall__FUl@l
/* 80018A40 000159A0  38 E0 00 00 */	li r7, 0
/* 80018A44 000159A4  48 00 20 5D */	bl DVDT_DRAMtoARAM__FUlUlUlUlPUlPFUl_v
lbl_80018A48:
/* 80018A48 000159A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018A4C 000159AC  38 60 00 00 */	li r3, 0
/* 80018A50 000159B0  7C 08 03 A6 */	mtlr r0
/* 80018A54 000159B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80018A58 000159B8  4E 80 00 20 */	blr 
/* 80018A5C 000159BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_SetAudioARAMSize__FUl
Jac_SetAudioARAMSize__FUl:
/* 80018A60 000159C0  90 6D 88 B8 */	stw r3, SELECTED_ARAM_SIZE-_SDA_BASE_(r13)
/* 80018A64 000159C4  4E 80 00 20 */	blr 
/* 80018A68 000159C8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018A6C 000159CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018A70 000159D0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018A74 000159D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018A78 000159D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018A7C 000159DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global ARAllocFull__FPUl
ARAllocFull__FPUl:
/* 80018A80 000159E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018A84 000159E4  7C 08 02 A6 */	mflr r0
/* 80018A88 000159E8  3C 80 80 21 */	lis r4, aram_hp@ha
/* 80018A8C 000159EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018A90 000159F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80018A94 000159F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80018A98 000159F8  7C 7E 1B 78 */	mr r30, r3
/* 80018A9C 000159FC  38 64 D7 8C */	addi r3, r4, aram_hp@l
/* 80018AA0 00015A00  80 A3 00 00 */	lwz r5, 0(r3)
/* 80018AA4 00015A04  80 83 00 04 */	lwz r4, 4(r3)
/* 80018AA8 00015A08  80 03 00 08 */	lwz r0, 8(r3)
/* 80018AAC 00015A0C  7C 85 20 50 */	subf r4, r5, r4
/* 80018AB0 00015A10  7F E4 00 50 */	subf r31, r4, r0
/* 80018AB4 00015A14  38 9F FF E0 */	addi r4, r31, -32
/* 80018AB8 00015A18  48 00 55 C9 */	bl Nas_HeapAlloc__FP6ALHeapl
/* 80018ABC 00015A1C  38 1F FF E0 */	addi r0, r31, -32
/* 80018AC0 00015A20  90 1E 00 00 */	stw r0, 0(r30)
/* 80018AC4 00015A24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018AC8 00015A28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80018ACC 00015A2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80018AD0 00015A30  7C 08 03 A6 */	mtlr r0
/* 80018AD4 00015A34  38 21 00 10 */	addi r1, r1, 0x10
/* 80018AD8 00015A38  4E 80 00 20 */	blr 
/* 80018ADC 00015A3C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_InitARAM__FUl
Jac_InitARAM__FUl:
/* 80018AE0 00015A40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80018AE4 00015A44  7C 08 02 A6 */	mflr r0
/* 80018AE8 00015A48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80018AEC 00015A4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80018AF0 00015A50  3F E0 00 40 */	lis r31, 0x40
/* 80018AF4 00015A54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80018AF8 00015A58  7C 7E 1B 78 */	mr r30, r3
/* 80018AFC 00015A5C  80 0D 88 B8 */	lwz r0, SELECTED_ARAM_SIZE-_SDA_BASE_(r13)
/* 80018B00 00015A60  28 00 00 00 */	cmplwi r0, 0
/* 80018B04 00015A64  41 82 00 08 */	beq lbl_80018B0C
/* 80018B08 00015A68  7C 1F 03 78 */	mr r31, r0
lbl_80018B0C:
/* 80018B0C 00015A6C  48 07 39 7D */	bl ARGetBaseAddress
/* 80018B10 00015A70  28 1E 00 00 */	cmplwi r30, 0
/* 80018B14 00015A74  90 6D 88 A4 */	stw r3, AUDIO_ARAM_TOP-_SDA_BASE_(r13)
/* 80018B18 00015A78  41 82 00 38 */	beq lbl_80018B50
/* 80018B1C 00015A7C  3C 60 80 0B */	lis r3, @240@ha
/* 80018B20 00015A80  38 63 A5 18 */	addi r3, r3, @240@l
/* 80018B24 00015A84  48 00 20 9D */	bl Jac_CheckFile__FPc
/* 80018B28 00015A88  90 61 00 08 */	stw r3, 8(r1)
/* 80018B2C 00015A8C  80 01 00 08 */	lwz r0, 8(r1)
/* 80018B30 00015A90  28 00 00 00 */	cmplwi r0, 0
/* 80018B34 00015A94  41 82 00 24 */	beq lbl_80018B58
/* 80018B38 00015A98  80 61 00 08 */	lwz r3, 8(r1)
/* 80018B3C 00015A9C  38 03 00 1F */	addi r0, r3, 0x1f
/* 80018B40 00015AA0  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 80018B44 00015AA4  90 01 00 08 */	stw r0, 8(r1)
/* 80018B48 00015AA8  80 01 00 08 */	lwz r0, 8(r1)
/* 80018B4C 00015AAC  48 00 00 0C */	b lbl_80018B58
lbl_80018B50:
/* 80018B50 00015AB0  38 00 00 00 */	li r0, 0
/* 80018B54 00015AB4  90 01 00 08 */	stw r0, 8(r1)
lbl_80018B58:
/* 80018B58 00015AB8  80 81 00 08 */	lwz r4, 8(r1)
/* 80018B5C 00015ABC  38 A0 00 40 */	li r5, 0x40
/* 80018B60 00015AC0  80 0D 88 A4 */	lwz r0, AUDIO_ARAM_TOP-_SDA_BASE_(r13)
/* 80018B64 00015AC4  3C 60 80 21 */	lis r3, aram_hp@ha
/* 80018B68 00015AC8  90 AD 88 A8 */	stw r5, CARD_SECURITY_BUFFER-_SDA_BASE_(r13)
/* 80018B6C 00015ACC  38 63 D7 8C */	addi r3, r3, aram_hp@l
/* 80018B70 00015AD0  7C 04 02 14 */	add r0, r4, r0
/* 80018B74 00015AD4  90 01 00 08 */	stw r0, 8(r1)
/* 80018B78 00015AD8  80 01 00 08 */	lwz r0, 8(r1)
/* 80018B7C 00015ADC  80 81 00 08 */	lwz r4, 8(r1)
/* 80018B80 00015AE0  90 0D 88 A0 */	stw r0, JAC_ARAM_DMA_BUFFER_TOP-_SDA_BASE_(r13)
/* 80018B84 00015AE4  3C 84 00 01 */	addis r4, r4, 1
/* 80018B88 00015AE8  38 04 C0 00 */	addi r0, r4, -16384
/* 80018B8C 00015AEC  90 01 00 08 */	stw r0, 8(r1)
/* 80018B90 00015AF0  80 81 00 08 */	lwz r4, 8(r1)
/* 80018B94 00015AF4  80 01 00 08 */	lwz r0, 8(r1)
/* 80018B98 00015AF8  7C A0 F8 50 */	subf r5, r0, r31
/* 80018B9C 00015AFC  48 00 55 85 */	bl Nas_HeapInit__FP6ALHeapPUcl
/* 80018BA0 00015B00  80 01 00 08 */	lwz r0, 8(r1)
/* 80018BA4 00015B04  80 01 00 08 */	lwz r0, 8(r1)
/* 80018BA8 00015B08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80018BAC 00015B0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80018BB0 00015B10  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80018BB4 00015B14  7C 08 03 A6 */	mtlr r0
/* 80018BB8 00015B18  38 21 00 20 */	addi r1, r1, 0x20
/* 80018BBC 00015B1C  4E 80 00 20 */	blr 
