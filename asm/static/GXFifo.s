.include "macros.inc"

.section .text

.org 0x80094030

.global GXCPInterruptHandler
GXCPInterruptHandler:
/* 80094030 00090F90  7C 08 02 A6 */	mflr r0
/* 80094034 00090F94  90 01 00 04 */	stw r0, 4(r1)
/* 80094038 00090F98  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 8009403C 00090F9C  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 80094040 00090FA0  7C 9F 23 78 */	mr r31, r4
/* 80094044 00090FA4  80 AD 8F D4 */	lwz r5, __cpReg-_SDA_BASE_(r13)
/* 80094048 00090FA8  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 8009404C 00090FAC  A0 05 00 00 */	lhz r0, 0(r5)
/* 80094050 00090FB0  90 03 00 0C */	stw r0, 0xc(r3)
/* 80094054 00090FB4  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80094058 00090FB8  80 03 00 08 */	lwz r0, 8(r3)
/* 8009405C 00090FBC  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80094060 00090FC0  41 82 00 38 */	beq lbl_80094098
/* 80094064 00090FC4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80094068 00090FC8  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 8009406C 00090FCC  41 82 00 2C */	beq lbl_80094098
/* 80094070 00090FD0  80 6D 8F E8 */	lwz r3, __GXCurrentThread-_SDA_BASE_(r13)
/* 80094074 00090FD4  4B FE A7 E9 */	bl OSResumeThread
/* 80094078 00090FD8  38 00 00 00 */	li r0, 0
/* 8009407C 00090FDC  90 0D 8F F0 */	stw r0, GXOverflowSuspendInProgress-_SDA_BASE_(r13)
/* 80094080 00090FE0  38 60 00 01 */	li r3, 1
/* 80094084 00090FE4  38 80 00 01 */	li r4, 1
/* 80094088 00090FE8  48 00 06 DD */	bl __GXWriteFifoIntReset
/* 8009408C 00090FEC  38 60 00 01 */	li r3, 1
/* 80094090 00090FF0  38 80 00 00 */	li r4, 0
/* 80094094 00090FF4  48 00 06 85 */	bl __GXWriteFifoIntEnable
lbl_80094098:
/* 80094098 00090FF8  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 8009409C 00090FFC  80 03 00 08 */	lwz r0, 8(r3)
/* 800940A0 00091000  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 800940A4 00091004  41 82 00 44 */	beq lbl_800940E8
/* 800940A8 00091008  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800940AC 0009100C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800940B0 00091010  41 82 00 38 */	beq lbl_800940E8
/* 800940B4 00091014  80 AD 8F F8 */	lwz r5, __GXOverflowCount-_SDA_BASE_(r13)
/* 800940B8 00091018  38 60 00 00 */	li r3, 0
/* 800940BC 0009101C  38 80 00 01 */	li r4, 1
/* 800940C0 00091020  38 05 00 01 */	addi r0, r5, 1
/* 800940C4 00091024  90 0D 8F F8 */	stw r0, __GXOverflowCount-_SDA_BASE_(r13)
/* 800940C8 00091028  48 00 06 51 */	bl __GXWriteFifoIntEnable
/* 800940CC 0009102C  38 60 00 01 */	li r3, 1
/* 800940D0 00091030  38 80 00 00 */	li r4, 0
/* 800940D4 00091034  48 00 06 91 */	bl __GXWriteFifoIntReset
/* 800940D8 00091038  38 00 00 01 */	li r0, 1
/* 800940DC 0009103C  80 6D 8F E8 */	lwz r3, __GXCurrentThread-_SDA_BASE_(r13)
/* 800940E0 00091040  90 0D 8F F0 */	stw r0, GXOverflowSuspendInProgress-_SDA_BASE_(r13)
/* 800940E4 00091044  4B FE AA 01 */	bl OSSuspendThread
lbl_800940E8:
/* 800940E8 00091048  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 800940EC 0009104C  80 83 00 08 */	lwz r4, 8(r3)
/* 800940F0 00091050  38 A3 00 08 */	addi r5, r3, 8
/* 800940F4 00091054  54 80 DF FF */	rlwinm. r0, r4, 0x1b, 0x1f, 0x1f
/* 800940F8 00091058  41 82 00 60 */	beq lbl_80094158
/* 800940FC 0009105C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80094100 00091060  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80094104 00091064  41 82 00 54 */	beq lbl_80094158
/* 80094108 00091068  54 80 06 F2 */	rlwinm r0, r4, 0, 0x1b, 0x19
/* 8009410C 0009106C  90 05 00 00 */	stw r0, 0(r5)
/* 80094110 00091070  80 8D 86 78 */	lwz r4, gx-_SDA_BASE_(r13)
/* 80094114 00091074  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 80094118 00091078  80 04 00 08 */	lwz r0, 8(r4)
/* 8009411C 0009107C  B0 03 00 02 */	sth r0, 2(r3)
/* 80094120 00091080  80 0D 8F F4 */	lwz r0, BreakPointCB-_SDA_BASE_(r13)
/* 80094124 00091084  28 00 00 00 */	cmplwi r0, 0
/* 80094128 00091088  41 82 00 30 */	beq lbl_80094158
/* 8009412C 0009108C  38 61 00 10 */	addi r3, r1, 0x10
/* 80094130 00091090  4B FE 63 01 */	bl OSClearContext
/* 80094134 00091094  38 61 00 10 */	addi r3, r1, 0x10
/* 80094138 00091098  4B FE 61 31 */	bl OSSetCurrentContext
/* 8009413C 0009109C  81 8D 8F F4 */	lwz r12, BreakPointCB-_SDA_BASE_(r13)
/* 80094140 000910A0  7D 88 03 A6 */	mtlr r12
/* 80094144 000910A4  4E 80 00 21 */	blrl 
/* 80094148 000910A8  38 61 00 10 */	addi r3, r1, 0x10
/* 8009414C 000910AC  4B FE 62 E5 */	bl OSClearContext
/* 80094150 000910B0  7F E3 FB 78 */	mr r3, r31
/* 80094154 000910B4  4B FE 61 15 */	bl OSSetCurrentContext
lbl_80094158:
/* 80094158 000910B8  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8009415C 000910BC  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 80094160 000910C0  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 80094164 000910C4  7C 08 03 A6 */	mtlr r0
/* 80094168 000910C8  4E 80 00 20 */	blr 

.global GXInitFifoBase
GXInitFifoBase:
/* 8009416C 000910CC  7C 08 02 A6 */	mflr r0
/* 80094170 000910D0  90 01 00 04 */	stw r0, 4(r1)
/* 80094174 000910D4  38 05 FF FC */	addi r0, r5, -4
/* 80094178 000910D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009417C 000910DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80094180 000910E0  3B E4 00 00 */	addi r31, r4, 0
/* 80094184 000910E4  7C 1F 02 14 */	add r0, r31, r0
/* 80094188 000910E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8009418C 000910EC  3B C3 00 00 */	addi r30, r3, 0
/* 80094190 000910F0  38 85 C0 00 */	addi r4, r5, -16384
/* 80094194 000910F4  93 E3 00 00 */	stw r31, 0(r3)
/* 80094198 000910F8  90 03 00 04 */	stw r0, 4(r3)
/* 8009419C 000910FC  38 00 00 00 */	li r0, 0
/* 800941A0 00091100  90 A3 00 08 */	stw r5, 8(r3)
/* 800941A4 00091104  54 A5 F8 74 */	rlwinm r5, r5, 0x1f, 1, 0x1a
/* 800941A8 00091108  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 800941AC 0009110C  48 00 00 9D */	bl GXInitFifoLimits
/* 800941B0 00091110  38 7E 00 00 */	addi r3, r30, 0
/* 800941B4 00091114  38 9F 00 00 */	addi r4, r31, 0
/* 800941B8 00091118  38 BF 00 00 */	addi r5, r31, 0
/* 800941BC 0009111C  48 00 00 1D */	bl GXInitFifoPtrs
/* 800941C0 00091120  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800941C4 00091124  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800941C8 00091128  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800941CC 0009112C  38 21 00 20 */	addi r1, r1, 0x20
/* 800941D0 00091130  7C 08 03 A6 */	mtlr r0
/* 800941D4 00091134  4E 80 00 20 */	blr 

.global GXInitFifoPtrs
GXInitFifoPtrs:
/* 800941D8 00091138  7C 08 02 A6 */	mflr r0
/* 800941DC 0009113C  90 01 00 04 */	stw r0, 4(r1)
/* 800941E0 00091140  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800941E4 00091144  93 E1 00 24 */	stw r31, 0x24(r1)
/* 800941E8 00091148  3B E5 00 00 */	addi r31, r5, 0
/* 800941EC 0009114C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 800941F0 00091150  3B C4 00 00 */	addi r30, r4, 0
/* 800941F4 00091154  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 800941F8 00091158  3B A3 00 00 */	addi r29, r3, 0
/* 800941FC 0009115C  4B FE 6A 29 */	bl OSDisableInterrupts
/* 80094200 00091160  93 DD 00 14 */	stw r30, 0x14(r29)
/* 80094204 00091164  7C 1E F8 50 */	subf r0, r30, r31
/* 80094208 00091168  93 FD 00 18 */	stw r31, 0x18(r29)
/* 8009420C 0009116C  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 80094210 00091170  80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 80094214 00091174  2C 04 00 00 */	cmpwi r4, 0
/* 80094218 00091178  40 80 00 10 */	bge lbl_80094228
/* 8009421C 0009117C  80 1D 00 08 */	lwz r0, 8(r29)
/* 80094220 00091180  7C 04 02 14 */	add r0, r4, r0
/* 80094224 00091184  90 1D 00 1C */	stw r0, 0x1c(r29)
lbl_80094228:
/* 80094228 00091188  4B FE 6A 25 */	bl OSRestoreInterrupts
/* 8009422C 0009118C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80094230 00091190  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80094234 00091194  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80094238 00091198  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8009423C 0009119C  38 21 00 28 */	addi r1, r1, 0x28
/* 80094240 000911A0  7C 08 03 A6 */	mtlr r0
/* 80094244 000911A4  4E 80 00 20 */	blr 

.global GXInitFifoLimits
GXInitFifoLimits:
/* 80094248 000911A8  90 83 00 0C */	stw r4, 0xc(r3)
/* 8009424C 000911AC  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80094250 000911B0  4E 80 00 20 */	blr 

.global GXSetCPUFifo
GXSetCPUFifo:
/* 80094254 000911B4  7C 08 02 A6 */	mflr r0
/* 80094258 000911B8  90 01 00 04 */	stw r0, 4(r1)
/* 8009425C 000911BC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80094260 000911C0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80094264 000911C4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80094268 000911C8  7C 7E 1B 78 */	mr r30, r3
/* 8009426C 000911CC  4B FE 69 B9 */	bl OSDisableInterrupts
/* 80094270 000911D0  80 0D 8F E4 */	lwz r0, GPFifo-_SDA_BASE_(r13)
/* 80094274 000911D4  3B E3 00 00 */	addi r31, r3, 0
/* 80094278 000911D8  93 CD 8F E0 */	stw r30, CPUFifo-_SDA_BASE_(r13)
/* 8009427C 000911DC  7C 1E 00 40 */	cmplw r30, r0
/* 80094280 000911E0  40 82 00 64 */	bne lbl_800942E4
/* 80094284 000911E4  80 BE 00 00 */	lwz r5, 0(r30)
/* 80094288 000911E8  38 00 00 01 */	li r0, 1
/* 8009428C 000911EC  80 8D 8F D0 */	lwz r4, __piReg-_SDA_BASE_(r13)
/* 80094290 000911F0  38 60 00 01 */	li r3, 1
/* 80094294 000911F4  54 A5 00 BE */	clrlwi r5, r5, 2
/* 80094298 000911F8  90 A4 00 0C */	stw r5, 0xc(r4)
/* 8009429C 000911FC  38 80 00 01 */	li r4, 1
/* 800942A0 00091200  80 DE 00 04 */	lwz r6, 4(r30)
/* 800942A4 00091204  80 AD 8F D0 */	lwz r5, __piReg-_SDA_BASE_(r13)
/* 800942A8 00091208  54 C6 00 BE */	clrlwi r6, r6, 2
/* 800942AC 0009120C  90 C5 00 10 */	stw r6, 0x10(r5)
/* 800942B0 00091210  80 DE 00 18 */	lwz r6, 0x18(r30)
/* 800942B4 00091214  80 AD 8F D0 */	lwz r5, __piReg-_SDA_BASE_(r13)
/* 800942B8 00091218  54 C6 00 B4 */	rlwinm r6, r6, 0, 2, 0x1a
/* 800942BC 0009121C  54 C6 01 88 */	rlwinm r6, r6, 0, 6, 4
/* 800942C0 00091220  90 C5 00 14 */	stw r6, 0x14(r5)
/* 800942C4 00091224  98 0D 8F EC */	stb r0, lbl_80218B6C-_SDA_BASE_(r13)
/* 800942C8 00091228  48 00 04 9D */	bl __GXWriteFifoIntReset
/* 800942CC 0009122C  38 60 00 01 */	li r3, 1
/* 800942D0 00091230  38 80 00 00 */	li r4, 0
/* 800942D4 00091234  48 00 04 45 */	bl __GXWriteFifoIntEnable
/* 800942D8 00091238  38 60 00 01 */	li r3, 1
/* 800942DC 0009123C  48 00 03 F9 */	bl __GXFifoLink
/* 800942E0 00091240  48 00 00 60 */	b lbl_80094340
lbl_800942E4:
/* 800942E4 00091244  88 0D 8F EC */	lbz r0, lbl_80218B6C-_SDA_BASE_(r13)
/* 800942E8 00091248  28 00 00 00 */	cmplwi r0, 0
/* 800942EC 0009124C  41 82 00 14 */	beq lbl_80094300
/* 800942F0 00091250  38 60 00 00 */	li r3, 0
/* 800942F4 00091254  48 00 03 E1 */	bl __GXFifoLink
/* 800942F8 00091258  38 00 00 00 */	li r0, 0
/* 800942FC 0009125C  98 0D 8F EC */	stb r0, lbl_80218B6C-_SDA_BASE_(r13)
lbl_80094300:
/* 80094300 00091260  38 60 00 00 */	li r3, 0
/* 80094304 00091264  38 80 00 00 */	li r4, 0
/* 80094308 00091268  48 00 04 11 */	bl __GXWriteFifoIntEnable
/* 8009430C 0009126C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80094310 00091270  80 6D 8F D0 */	lwz r3, __piReg-_SDA_BASE_(r13)
/* 80094314 00091274  54 00 00 BE */	clrlwi r0, r0, 2
/* 80094318 00091278  90 03 00 0C */	stw r0, 0xc(r3)
/* 8009431C 0009127C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80094320 00091280  80 6D 8F D0 */	lwz r3, __piReg-_SDA_BASE_(r13)
/* 80094324 00091284  54 00 00 BE */	clrlwi r0, r0, 2
/* 80094328 00091288  90 03 00 10 */	stw r0, 0x10(r3)
/* 8009432C 0009128C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80094330 00091290  80 6D 8F D0 */	lwz r3, __piReg-_SDA_BASE_(r13)
/* 80094334 00091294  54 00 00 B4 */	rlwinm r0, r0, 0, 2, 0x1a
/* 80094338 00091298  54 00 01 88 */	rlwinm r0, r0, 0, 6, 4
/* 8009433C 0009129C  90 03 00 14 */	stw r0, 0x14(r3)
lbl_80094340:
/* 80094340 000912A0  7C 00 04 AC */	sync 0
/* 80094344 000912A4  7F E3 FB 78 */	mr r3, r31
/* 80094348 000912A8  4B FE 69 05 */	bl OSRestoreInterrupts
/* 8009434C 000912AC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80094350 000912B0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80094354 000912B4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80094358 000912B8  38 21 00 18 */	addi r1, r1, 0x18
/* 8009435C 000912BC  7C 08 03 A6 */	mtlr r0
/* 80094360 000912C0  4E 80 00 20 */	blr 

.global GXSetGPFifo
GXSetGPFifo:
/* 80094364 000912C4  7C 08 02 A6 */	mflr r0
/* 80094368 000912C8  90 01 00 04 */	stw r0, 4(r1)
/* 8009436C 000912CC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80094370 000912D0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80094374 000912D4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80094378 000912D8  7C 7E 1B 78 */	mr r30, r3
/* 8009437C 000912DC  4B FE 68 A9 */	bl OSDisableInterrupts
/* 80094380 000912E0  7C 7F 1B 78 */	mr r31, r3
/* 80094384 000912E4  48 00 03 2D */	bl __GXFifoReadDisable
/* 80094388 000912E8  38 60 00 00 */	li r3, 0
/* 8009438C 000912EC  38 80 00 00 */	li r4, 0
/* 80094390 000912F0  48 00 03 89 */	bl __GXWriteFifoIntEnable
/* 80094394 000912F4  93 CD 8F E4 */	stw r30, GPFifo-_SDA_BASE_(r13)
/* 80094398 000912F8  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 8009439C 000912FC  80 1E 00 00 */	lwz r0, 0(r30)
/* 800943A0 00091300  B0 03 00 20 */	sth r0, 0x20(r3)
/* 800943A4 00091304  80 1E 00 04 */	lwz r0, 4(r30)
/* 800943A8 00091308  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800943AC 0009130C  B0 03 00 24 */	sth r0, 0x24(r3)
/* 800943B0 00091310  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800943B4 00091314  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800943B8 00091318  B0 03 00 30 */	sth r0, 0x30(r3)
/* 800943BC 0009131C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800943C0 00091320  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800943C4 00091324  B0 03 00 34 */	sth r0, 0x34(r3)
/* 800943C8 00091328  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 800943CC 0009132C  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800943D0 00091330  B0 03 00 38 */	sth r0, 0x38(r3)
/* 800943D4 00091334  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 800943D8 00091338  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800943DC 0009133C  B0 03 00 28 */	sth r0, 0x28(r3)
/* 800943E0 00091340  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 800943E4 00091344  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800943E8 00091348  B0 03 00 2C */	sth r0, 0x2c(r3)
/* 800943EC 0009134C  80 1E 00 00 */	lwz r0, 0(r30)
/* 800943F0 00091350  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800943F4 00091354  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 800943F8 00091358  B0 03 00 22 */	sth r0, 0x22(r3)
/* 800943FC 0009135C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80094400 00091360  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 80094404 00091364  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 80094408 00091368  B0 03 00 26 */	sth r0, 0x26(r3)
/* 8009440C 0009136C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80094410 00091370  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 80094414 00091374  7C 00 86 70 */	srawi r0, r0, 0x10
/* 80094418 00091378  B0 03 00 32 */	sth r0, 0x32(r3)
/* 8009441C 0009137C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80094420 00091380  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 80094424 00091384  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 80094428 00091388  B0 03 00 36 */	sth r0, 0x36(r3)
/* 8009442C 0009138C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80094430 00091390  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 80094434 00091394  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 80094438 00091398  B0 03 00 3A */	sth r0, 0x3a(r3)
/* 8009443C 0009139C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80094440 000913A0  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 80094444 000913A4  54 00 84 3E */	srwi r0, r0, 0x10
/* 80094448 000913A8  B0 03 00 2A */	sth r0, 0x2a(r3)
/* 8009444C 000913AC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80094450 000913B0  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 80094454 000913B4  54 00 84 3E */	srwi r0, r0, 0x10
/* 80094458 000913B8  B0 03 00 2E */	sth r0, 0x2e(r3)
/* 8009445C 000913BC  7C 00 04 AC */	sync 0
/* 80094460 000913C0  80 6D 8F E0 */	lwz r3, CPUFifo-_SDA_BASE_(r13)
/* 80094464 000913C4  80 0D 8F E4 */	lwz r0, GPFifo-_SDA_BASE_(r13)
/* 80094468 000913C8  7C 03 00 40 */	cmplw r3, r0
/* 8009446C 000913CC  40 82 00 24 */	bne lbl_80094490
/* 80094470 000913D0  38 00 00 01 */	li r0, 1
/* 80094474 000913D4  98 0D 8F EC */	stb r0, lbl_80218B6C-_SDA_BASE_(r13)
/* 80094478 000913D8  38 60 00 01 */	li r3, 1
/* 8009447C 000913DC  38 80 00 00 */	li r4, 0
/* 80094480 000913E0  48 00 02 99 */	bl __GXWriteFifoIntEnable
/* 80094484 000913E4  38 60 00 01 */	li r3, 1
/* 80094488 000913E8  48 00 02 4D */	bl __GXFifoLink
/* 8009448C 000913EC  48 00 00 20 */	b lbl_800944AC
lbl_80094490:
/* 80094490 000913F0  38 00 00 00 */	li r0, 0
/* 80094494 000913F4  98 0D 8F EC */	stb r0, lbl_80218B6C-_SDA_BASE_(r13)
/* 80094498 000913F8  38 60 00 00 */	li r3, 0
/* 8009449C 000913FC  38 80 00 00 */	li r4, 0
/* 800944A0 00091400  48 00 02 79 */	bl __GXWriteFifoIntEnable
/* 800944A4 00091404  38 60 00 00 */	li r3, 0
/* 800944A8 00091408  48 00 02 2D */	bl __GXFifoLink
lbl_800944AC:
/* 800944AC 0009140C  38 60 00 01 */	li r3, 1
/* 800944B0 00091410  38 80 00 01 */	li r4, 1
/* 800944B4 00091414  48 00 02 B1 */	bl __GXWriteFifoIntReset
/* 800944B8 00091418  48 00 01 D1 */	bl __GXFifoReadEnable
/* 800944BC 0009141C  7F E3 FB 78 */	mr r3, r31
/* 800944C0 00091420  4B FE 67 8D */	bl OSRestoreInterrupts
/* 800944C4 00091424  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800944C8 00091428  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800944CC 0009142C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800944D0 00091430  38 21 00 18 */	addi r1, r1, 0x18
/* 800944D4 00091434  7C 08 03 A6 */	mtlr r0
/* 800944D8 00091438  4E 80 00 20 */	blr 

.global GXSaveCPUFifo
GXSaveCPUFifo:
/* 800944DC 0009143C  7C 08 02 A6 */	mflr r0
/* 800944E0 00091440  90 01 00 04 */	stw r0, 4(r1)
/* 800944E4 00091444  94 21 FF F8 */	stwu r1, -8(r1)
/* 800944E8 00091448  48 00 00 15 */	bl __GXSaveCPUFifoAux
/* 800944EC 0009144C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800944F0 00091450  38 21 00 08 */	addi r1, r1, 8
/* 800944F4 00091454  7C 08 03 A6 */	mtlr r0
/* 800944F8 00091458  4E 80 00 20 */	blr 

.global __GXSaveCPUFifoAux
__GXSaveCPUFifoAux:
/* 800944FC 0009145C  7C 08 02 A6 */	mflr r0
/* 80094500 00091460  90 01 00 04 */	stw r0, 4(r1)
/* 80094504 00091464  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80094508 00091468  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8009450C 0009146C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80094510 00091470  7C 7E 1B 78 */	mr r30, r3
/* 80094514 00091474  4B FE 67 11 */	bl OSDisableInterrupts
/* 80094518 00091478  7C 7F 1B 78 */	mr r31, r3
/* 8009451C 0009147C  48 00 12 95 */	bl GXFlush
/* 80094520 00091480  80 6D 8F D0 */	lwz r3, __piReg-_SDA_BASE_(r13)
/* 80094524 00091484  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80094528 00091488  3C 03 80 00 */	addis r0, r3, 0x8000
/* 8009452C 0009148C  90 1E 00 00 */	stw r0, 0(r30)
/* 80094530 00091490  80 6D 8F D0 */	lwz r3, __piReg-_SDA_BASE_(r13)
/* 80094534 00091494  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80094538 00091498  3C 03 80 00 */	addis r0, r3, 0x8000
/* 8009453C 0009149C  90 1E 00 04 */	stw r0, 4(r30)
/* 80094540 000914A0  80 6D 8F D0 */	lwz r3, __piReg-_SDA_BASE_(r13)
/* 80094544 000914A4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80094548 000914A8  54 03 01 88 */	rlwinm r3, r0, 0, 6, 4
/* 8009454C 000914AC  3C 03 80 00 */	addis r0, r3, 0x8000
/* 80094550 000914B0  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80094554 000914B4  88 0D 8F EC */	lbz r0, lbl_80218B6C-_SDA_BASE_(r13)
/* 80094558 000914B8  28 00 00 00 */	cmplwi r0, 0
/* 8009455C 000914BC  41 82 00 34 */	beq lbl_80094590
/* 80094560 000914C0  80 8D 8F D4 */	lwz r4, __cpReg-_SDA_BASE_(r13)
/* 80094564 000914C4  A0 64 00 3A */	lhz r3, 0x3a(r4)
/* 80094568 000914C8  A0 84 00 38 */	lhz r4, 0x38(r4)
/* 8009456C 000914CC  50 64 80 1E */	rlwimi r4, r3, 0x10, 0, 0xf
/* 80094570 000914D0  3C 04 80 00 */	addis r0, r4, 0x8000
/* 80094574 000914D4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80094578 000914D8  80 8D 8F D4 */	lwz r4, __cpReg-_SDA_BASE_(r13)
/* 8009457C 000914DC  A0 64 00 32 */	lhz r3, 0x32(r4)
/* 80094580 000914E0  A0 04 00 30 */	lhz r0, 0x30(r4)
/* 80094584 000914E4  50 60 80 1E */	rlwimi r0, r3, 0x10, 0, 0xf
/* 80094588 000914E8  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8009458C 000914EC  48 00 00 2C */	b lbl_800945B8
lbl_80094590:
/* 80094590 000914F0  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80094594 000914F4  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80094598 000914F8  7C 03 00 50 */	subf r0, r3, r0
/* 8009459C 000914FC  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 800945A0 00091500  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 800945A4 00091504  2C 03 00 00 */	cmpwi r3, 0
/* 800945A8 00091508  40 80 00 10 */	bge lbl_800945B8
/* 800945AC 0009150C  80 1E 00 08 */	lwz r0, 8(r30)
/* 800945B0 00091510  7C 03 02 14 */	add r0, r3, r0
/* 800945B4 00091514  90 1E 00 1C */	stw r0, 0x1c(r30)
lbl_800945B8:
/* 800945B8 00091518  7F E3 FB 78 */	mr r3, r31
/* 800945BC 0009151C  4B FE 66 91 */	bl OSRestoreInterrupts
/* 800945C0 00091520  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800945C4 00091524  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800945C8 00091528  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800945CC 0009152C  38 21 00 18 */	addi r1, r1, 0x18
/* 800945D0 00091530  7C 08 03 A6 */	mtlr r0
/* 800945D4 00091534  4E 80 00 20 */	blr 

.global GXGetGPStatus
GXGetGPStatus:
/* 800945D8 00091538  81 2D 8F D4 */	lwz r9, __cpReg-_SDA_BASE_(r13)
/* 800945DC 0009153C  81 0D 86 78 */	lwz r8, gx-_SDA_BASE_(r13)
/* 800945E0 00091540  A0 09 00 00 */	lhz r0, 0(r9)
/* 800945E4 00091544  90 08 00 0C */	stw r0, 0xc(r8)
/* 800945E8 00091548  81 0D 86 78 */	lwz r8, gx-_SDA_BASE_(r13)
/* 800945EC 0009154C  80 08 00 0C */	lwz r0, 0xc(r8)
/* 800945F0 00091550  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 800945F4 00091554  98 03 00 00 */	stb r0, 0(r3)
/* 800945F8 00091558  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 800945FC 0009155C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80094600 00091560  54 00 FF FE */	rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 80094604 00091564  98 04 00 00 */	stb r0, 0(r4)
/* 80094608 00091568  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 8009460C 0009156C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80094610 00091570  54 00 F7 FE */	rlwinm r0, r0, 0x1e, 0x1f, 0x1f
/* 80094614 00091574  98 05 00 00 */	stb r0, 0(r5)
/* 80094618 00091578  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 8009461C 0009157C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80094620 00091580  54 00 EF FE */	rlwinm r0, r0, 0x1d, 0x1f, 0x1f
/* 80094624 00091584  98 06 00 00 */	stb r0, 0(r6)
/* 80094628 00091588  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 8009462C 0009158C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80094630 00091590  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 80094634 00091594  98 07 00 00 */	stb r0, 0(r7)
/* 80094638 00091598  4E 80 00 20 */	blr 

.global __GXFifoInit
__GXFifoInit:
/* 8009463C 0009159C  7C 08 02 A6 */	mflr r0
/* 80094640 000915A0  3C 60 80 09 */	lis r3, GXCPInterruptHandler@ha
/* 80094644 000915A4  90 01 00 04 */	stw r0, 4(r1)
/* 80094648 000915A8  38 83 40 30 */	addi r4, r3, GXCPInterruptHandler@l
/* 8009464C 000915AC  38 60 00 11 */	li r3, 0x11
/* 80094650 000915B0  94 21 FF F8 */	stwu r1, -8(r1)
/* 80094654 000915B4  4B FE 66 1D */	bl __OSSetInterruptHandler
/* 80094658 000915B8  38 60 40 00 */	li r3, 0x4000
/* 8009465C 000915BC  4B FE 6A 19 */	bl __OSUnmaskInterrupts
/* 80094660 000915C0  4B FE 96 7D */	bl OSGetCurrentThread
/* 80094664 000915C4  38 00 00 00 */	li r0, 0
/* 80094668 000915C8  90 6D 8F E8 */	stw r3, __GXCurrentThread-_SDA_BASE_(r13)
/* 8009466C 000915CC  90 0D 8F F0 */	stw r0, GXOverflowSuspendInProgress-_SDA_BASE_(r13)
/* 80094670 000915D0  90 0D 8F E0 */	stw r0, CPUFifo-_SDA_BASE_(r13)
/* 80094674 000915D4  90 0D 8F E4 */	stw r0, GPFifo-_SDA_BASE_(r13)
/* 80094678 000915D8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8009467C 000915DC  38 21 00 08 */	addi r1, r1, 8
/* 80094680 000915E0  7C 08 03 A6 */	mtlr r0
/* 80094684 000915E4  4E 80 00 20 */	blr 

.global __GXFifoReadEnable
__GXFifoReadEnable:
/* 80094688 000915E8  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 8009468C 000915EC  84 03 00 08 */	lwzu r0, 8(r3)
/* 80094690 000915F0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80094694 000915F4  60 00 00 01 */	ori r0, r0, 1
/* 80094698 000915F8  90 03 00 00 */	stw r0, 0(r3)
/* 8009469C 000915FC  80 8D 86 78 */	lwz r4, gx-_SDA_BASE_(r13)
/* 800946A0 00091600  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800946A4 00091604  80 04 00 08 */	lwz r0, 8(r4)
/* 800946A8 00091608  B0 03 00 02 */	sth r0, 2(r3)
/* 800946AC 0009160C  4E 80 00 20 */	blr 

.global __GXFifoReadDisable
__GXFifoReadDisable:
/* 800946B0 00091610  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 800946B4 00091614  84 03 00 08 */	lwzu r0, 8(r3)
/* 800946B8 00091618  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800946BC 0009161C  90 03 00 00 */	stw r0, 0(r3)
/* 800946C0 00091620  80 8D 86 78 */	lwz r4, gx-_SDA_BASE_(r13)
/* 800946C4 00091624  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800946C8 00091628  80 04 00 08 */	lwz r0, 8(r4)
/* 800946CC 0009162C  B0 03 00 02 */	sth r0, 2(r3)
/* 800946D0 00091630  4E 80 00 20 */	blr 

.global __GXFifoLink
__GXFifoLink:
/* 800946D4 00091634  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800946D8 00091638  41 82 00 0C */	beq lbl_800946E4
/* 800946DC 0009163C  38 00 00 01 */	li r0, 1
/* 800946E0 00091640  48 00 00 08 */	b lbl_800946E8
lbl_800946E4:
/* 800946E4 00091644  38 00 00 00 */	li r0, 0
lbl_800946E8:
/* 800946E8 00091648  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 800946EC 0009164C  54 00 20 36 */	slwi r0, r0, 4
/* 800946F0 00091650  38 83 00 08 */	addi r4, r3, 8
/* 800946F4 00091654  80 63 00 08 */	lwz r3, 8(r3)
/* 800946F8 00091658  54 63 07 34 */	rlwinm r3, r3, 0, 0x1c, 0x1a
/* 800946FC 0009165C  7C 60 03 78 */	or r0, r3, r0
/* 80094700 00091660  90 04 00 00 */	stw r0, 0(r4)
/* 80094704 00091664  80 8D 86 78 */	lwz r4, gx-_SDA_BASE_(r13)
/* 80094708 00091668  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 8009470C 0009166C  80 04 00 08 */	lwz r0, 8(r4)
/* 80094710 00091670  B0 03 00 02 */	sth r0, 2(r3)
/* 80094714 00091674  4E 80 00 20 */	blr 

.global __GXWriteFifoIntEnable
__GXWriteFifoIntEnable:
/* 80094718 00091678  80 AD 86 78 */	lwz r5, gx-_SDA_BASE_(r13)
/* 8009471C 0009167C  54 63 15 BA */	rlwinm r3, r3, 2, 0x16, 0x1d
/* 80094720 00091680  54 80 1D 78 */	rlwinm r0, r4, 3, 0x15, 0x1c
/* 80094724 00091684  38 C5 00 08 */	addi r6, r5, 8
/* 80094728 00091688  80 A5 00 08 */	lwz r5, 8(r5)
/* 8009472C 0009168C  54 A4 07 B8 */	rlwinm r4, r5, 0, 0x1e, 0x1c
/* 80094730 00091690  7C 83 1B 78 */	or r3, r4, r3
/* 80094734 00091694  90 66 00 00 */	stw r3, 0(r6)
/* 80094738 00091698  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 8009473C 0009169C  38 83 00 08 */	addi r4, r3, 8
/* 80094740 000916A0  80 63 00 08 */	lwz r3, 8(r3)
/* 80094744 000916A4  54 63 07 76 */	rlwinm r3, r3, 0, 0x1d, 0x1b
/* 80094748 000916A8  7C 60 03 78 */	or r0, r3, r0
/* 8009474C 000916AC  90 04 00 00 */	stw r0, 0(r4)
/* 80094750 000916B0  80 8D 86 78 */	lwz r4, gx-_SDA_BASE_(r13)
/* 80094754 000916B4  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 80094758 000916B8  80 04 00 08 */	lwz r0, 8(r4)
/* 8009475C 000916BC  B0 03 00 02 */	sth r0, 2(r3)
/* 80094760 000916C0  4E 80 00 20 */	blr 

.global __GXWriteFifoIntReset
__GXWriteFifoIntReset:
/* 80094764 000916C4  80 AD 86 78 */	lwz r5, gx-_SDA_BASE_(r13)
/* 80094768 000916C8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8009476C 000916CC  54 80 0D FC */	rlwinm r0, r4, 1, 0x17, 0x1e
/* 80094770 000916D0  38 C5 00 10 */	addi r6, r5, 0x10
/* 80094774 000916D4  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 80094778 000916D8  54 A4 00 3C */	rlwinm r4, r5, 0, 0, 0x1e
/* 8009477C 000916DC  7C 83 1B 78 */	or r3, r4, r3
/* 80094780 000916E0  90 66 00 00 */	stw r3, 0(r6)
/* 80094784 000916E4  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80094788 000916E8  38 83 00 10 */	addi r4, r3, 0x10
/* 8009478C 000916EC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80094790 000916F0  54 63 07 FA */	rlwinm r3, r3, 0, 0x1f, 0x1d
/* 80094794 000916F4  7C 60 03 78 */	or r0, r3, r0
/* 80094798 000916F8  90 04 00 00 */	stw r0, 0(r4)
/* 8009479C 000916FC  80 8D 86 78 */	lwz r4, gx-_SDA_BASE_(r13)
/* 800947A0 00091700  80 6D 8F D4 */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800947A4 00091704  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800947A8 00091708  B0 03 00 04 */	sth r0, 4(r3)
/* 800947AC 0009170C  4E 80 00 20 */	blr 

.global __GXCleanGPFifo
__GXCleanGPFifo:
/* 800947B0 00091710  7C 08 02 A6 */	mflr r0
/* 800947B4 00091714  90 01 00 04 */	stw r0, 4(r1)
/* 800947B8 00091718  94 21 FF 58 */	stwu r1, -0xa8(r1)
/* 800947BC 0009171C  93 E1 00 A4 */	stw r31, 0xa4(r1)
/* 800947C0 00091720  93 C1 00 A0 */	stw r30, 0xa0(r1)
/* 800947C4 00091724  93 A1 00 9C */	stw r29, 0x9c(r1)
/* 800947C8 00091728  48 00 01 41 */	bl GXGetGPFifo
/* 800947CC 0009172C  7C 7F 1B 78 */	mr r31, r3
/* 800947D0 00091730  48 00 01 31 */	bl GXGetCPUFifo
/* 800947D4 00091734  38 00 00 10 */	li r0, 0x10
/* 800947D8 00091738  83 BF 00 00 */	lwz r29, 0(r31)
/* 800947DC 0009173C  7C 09 03 A6 */	mtctr r0
/* 800947E0 00091740  3B C3 00 00 */	addi r30, r3, 0
/* 800947E4 00091744  38 A1 00 0C */	addi r5, r1, 0xc
/* 800947E8 00091748  38 9F FF F8 */	addi r4, r31, -8
lbl_800947EC:
/* 800947EC 0009174C  84 64 00 08 */	lwzu r3, 8(r4)
/* 800947F0 00091750  80 04 00 04 */	lwz r0, 4(r4)
/* 800947F4 00091754  94 65 00 08 */	stwu r3, 8(r5)
/* 800947F8 00091758  90 05 00 04 */	stw r0, 4(r5)
/* 800947FC 0009175C  42 00 FF F0 */	bdnz lbl_800947EC
/* 80094800 00091760  4B FE 64 25 */	bl OSDisableInterrupts
/* 80094804 00091764  93 A1 00 28 */	stw r29, 0x28(r1)
/* 80094808 00091768  38 00 00 00 */	li r0, 0
/* 8009480C 0009176C  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 80094810 00091770  90 01 00 30 */	stw r0, 0x30(r1)
/* 80094814 00091774  80 81 00 30 */	lwz r4, 0x30(r1)
/* 80094818 00091778  2C 04 00 00 */	cmpwi r4, 0
/* 8009481C 0009177C  40 80 00 10 */	bge lbl_8009482C
/* 80094820 00091780  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80094824 00091784  7C 04 02 14 */	add r0, r4, r0
/* 80094828 00091788  90 01 00 30 */	stw r0, 0x30(r1)
lbl_8009482C:
/* 8009482C 0009178C  4B FE 64 21 */	bl OSRestoreInterrupts
/* 80094830 00091790  38 61 00 14 */	addi r3, r1, 0x14
/* 80094834 00091794  4B FF FB 31 */	bl GXSetGPFifo
/* 80094838 00091798  7C 1E F8 40 */	cmplw r30, r31
/* 8009483C 0009179C  40 82 00 0C */	bne lbl_80094848
/* 80094840 000917A0  38 61 00 14 */	addi r3, r1, 0x14
/* 80094844 000917A4  4B FF FA 11 */	bl GXSetCPUFifo
lbl_80094848:
/* 80094848 000917A8  4B FE 63 DD */	bl OSDisableInterrupts
/* 8009484C 000917AC  93 BF 00 14 */	stw r29, 0x14(r31)
/* 80094850 000917B0  38 00 00 00 */	li r0, 0
/* 80094854 000917B4  93 BF 00 18 */	stw r29, 0x18(r31)
/* 80094858 000917B8  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8009485C 000917BC  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80094860 000917C0  2C 04 00 00 */	cmpwi r4, 0
/* 80094864 000917C4  40 80 00 10 */	bge lbl_80094874
/* 80094868 000917C8  80 1F 00 08 */	lwz r0, 8(r31)
/* 8009486C 000917CC  7C 04 02 14 */	add r0, r4, r0
/* 80094870 000917D0  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_80094874:
/* 80094874 000917D4  4B FE 63 D9 */	bl OSRestoreInterrupts
/* 80094878 000917D8  7F E3 FB 78 */	mr r3, r31
/* 8009487C 000917DC  4B FF FA E9 */	bl GXSetGPFifo
/* 80094880 000917E0  7C 1E F8 40 */	cmplw r30, r31
/* 80094884 000917E4  40 82 00 0C */	bne lbl_80094890
/* 80094888 000917E8  7F C3 F3 78 */	mr r3, r30
/* 8009488C 000917EC  4B FF F9 C9 */	bl GXSetCPUFifo
lbl_80094890:
/* 80094890 000917F0  80 01 00 AC */	lwz r0, 0xac(r1)
/* 80094894 000917F4  83 E1 00 A4 */	lwz r31, 0xa4(r1)
/* 80094898 000917F8  83 C1 00 A0 */	lwz r30, 0xa0(r1)
/* 8009489C 000917FC  83 A1 00 9C */	lwz r29, 0x9c(r1)
/* 800948A0 00091800  38 21 00 A8 */	addi r1, r1, 0xa8
/* 800948A4 00091804  7C 08 03 A6 */	mtlr r0
/* 800948A8 00091808  4E 80 00 20 */	blr 

.global GXSetCurrentGXThread
GXSetCurrentGXThread:
/* 800948AC 0009180C  7C 08 02 A6 */	mflr r0
/* 800948B0 00091810  90 01 00 04 */	stw r0, 4(r1)
/* 800948B4 00091814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800948B8 00091818  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800948BC 0009181C  93 C1 00 08 */	stw r30, 8(r1)
/* 800948C0 00091820  4B FE 63 65 */	bl OSDisableInterrupts
/* 800948C4 00091824  83 CD 8F E8 */	lwz r30, __GXCurrentThread-_SDA_BASE_(r13)
/* 800948C8 00091828  7C 7F 1B 78 */	mr r31, r3
/* 800948CC 0009182C  4B FE 94 11 */	bl OSGetCurrentThread
/* 800948D0 00091830  90 6D 8F E8 */	stw r3, __GXCurrentThread-_SDA_BASE_(r13)
/* 800948D4 00091834  7F E3 FB 78 */	mr r3, r31
/* 800948D8 00091838  4B FE 63 75 */	bl OSRestoreInterrupts
/* 800948DC 0009183C  7F C3 F3 78 */	mr r3, r30
/* 800948E0 00091840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800948E4 00091844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800948E8 00091848  83 C1 00 08 */	lwz r30, 8(r1)
/* 800948EC 0009184C  38 21 00 10 */	addi r1, r1, 0x10
/* 800948F0 00091850  7C 08 03 A6 */	mtlr r0
/* 800948F4 00091854  4E 80 00 20 */	blr 

.global GXGetCurrentGXThread
GXGetCurrentGXThread:
/* 800948F8 00091858  80 6D 8F E8 */	lwz r3, __GXCurrentThread-_SDA_BASE_(r13)
/* 800948FC 0009185C  4E 80 00 20 */	blr 

.global GXGetCPUFifo
GXGetCPUFifo:
/* 80094900 00091860  80 6D 8F E0 */	lwz r3, CPUFifo-_SDA_BASE_(r13)
/* 80094904 00091864  4E 80 00 20 */	blr 

.global GXGetGPFifo
GXGetGPFifo:
/* 80094908 00091868  80 6D 8F E4 */	lwz r3, GPFifo-_SDA_BASE_(r13)
/* 8009490C 0009186C  4E 80 00 20 */	blr 
